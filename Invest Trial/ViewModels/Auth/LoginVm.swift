//
//  LoginVm.swift
//  Invest Trial
//
//  Created by Abservetech on 28/09/23.
//

import Foundation


class LoginVm {
    
    var successHandler: ((BaseModel) -> ())?
    var errorHandler: ((String) -> ())?
    
}
extension LoginVm {
    typealias Credentials = (email: String, password: String)
    
    func loginApi(with credential: Credentials) {
        
        var resource = Resource<BaseModel>(url: HttpNetworkRoute.Auth.login)
        resource.httpMethod = .post
        resource.params = ["email": credential.email, "password": credential.password]
        ApiClient.sharedInstance.sendRequest(withRes: resource) { result in
            switch result {
            case .success(let baseModel):
                self.successHandler?(baseModel)
            case .failure(let error):
                self.errorHandler?(error.messsage)
            }
        }
    }
}
