//
//  ApiClient.swift
//  Invest Trial
//
//  Created by Abservetech on 28/09/23.
//

import Foundation
import Alamofire
import SwiftyJSON



final class ApiClient {
    
    static let sharedInstance = ApiClient()
    private static let accessToken = "Authorization"
    private static let contentType = "Content-Type"
    
    public func sendRequest<T>(withRes resource: Resource<T>, completionHandler: @escaping(Swift.Result<T, Errormodel>) -> Void) {
        var httpHeader: HTTPHeaders = [:]
        if NetworkReachabilityManager()!.isReachable {
            
            var authToken = UserDefaults.standard.string(forKey: UserDefaultsKey.authToken) ?? ""
            httpHeader = [ApiClient.accessToken: authToken]
            let requestUrl = HttpNetworkRoute.baseApi + resource.url
            
            print("REQUEST URL:\(requestUrl)")
            print("REQUEST PARAMS: \(resource.params ?? Parameters())")

            Alamofire.request(requestUrl, method: resource.httpMethod, parameters: resource.params, encoding: JSONEncoding.default, headers: httpHeader).responseJSON { (jsonResponse) in
                switch jsonResponse.result {
                case .success(let value):
                    print("RESPONSE DATAS:\(JSON(value))")
                    let status = jsonResponse.response?.statusCode
                    if status == 200 {
                        let modelObj = T.init(json: JSON(value))
                        completionHandler(.success(modelObj))
                    } else {
                        var modelObj = Errormodel.init(json: JSON(value))
                        modelObj.statusCode = jsonResponse.response?.statusCode ?? 0
                        completionHandler(.failure(modelObj))
                    }
                case .failure(let error):
                    print("ERROR::\(error)")
                    let modelObj = Errormodel.init(json: JSON(error))
                    completionHandler(.failure(modelObj))
                }
            }
        }
    }
}

