//
//  RegisterVm.swift
//  Invest Trial
//
//  Created by Abservetech on 28/09/23.
//

import Foundation


class RegisterVm {
    
    var successHandler: ((BaseModel) -> ())?
    var errorHandler: ((String) -> ())?
    
}
extension RegisterVm {
    
    func loginApi(with registerVal: RegisterMapModel) {
        
        var resource = Resource<BaseModel>(url: HttpNetworkRoute.Auth.register)
        resource.httpMethod = .post
        resource.params = registerVal.toJSON()
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
