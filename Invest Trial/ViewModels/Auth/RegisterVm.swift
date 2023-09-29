//
//  RegisterVm.swift
//  Invest Trial
//
//  Created by  on 28/09/23.
//

import Foundation


class RegisterVm: ObservableObject {
    
    @Published var isHome = Bool()
    @Published var showToast = false
    @Published var fullname = "yoga"
    @Published var email = "eve.holt@reqres.in"
    @Published var password = "1234567"
    @Published var message = "1234567"
    
    func signupApi(with registerVal: RegisterMapModel) {
        var resource = Resource<BaseModel>(url: HttpNetworkRoute.Auth.register)
        resource.httpMethod = .post
        resource.params = registerVal.toJSON()
        ApiClient.sharedInstance.sendRequest(withRes: resource) { result in
            switch result {
            case .success(_):
                self.isHome = true
                self.commonAlert(message: Constant.Message.registersuccess)
            case .failure(_):
                break
            }
        }
    }
}
extension RegisterVm {
    func signupValidation() {
        if fullname.isEmpty {
            commonAlert(message: Constant.Message.fullname)
        }  else if email.isEmpty {
            commonAlert(message: Constant.Message.email)
        } else if password.isEmpty {
            commonAlert(message: Constant.Message.password)
        }else {
            var reqModel = RegisterMapModel()
            reqModel.email = email
            reqModel.password = password
            signupApi(with: reqModel)
        }
    }
}
extension RegisterVm {
    func commonAlert(message: String) {
        self.message = message
        showToast.toggle()
    }
}
