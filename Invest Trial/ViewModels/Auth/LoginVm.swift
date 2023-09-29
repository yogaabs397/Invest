//
//  LoginVm.swift
//  Invest Trial
//
//  Created by  on 28/09/23.
//

import Foundation


class LoginVm : ObservableObject {
    
    @Published var email = "eve.holt@reqres.in"
    @Published var password = ""
    @Published var isHome = false
    @Published var showToast = false
    @Published var message = String()
    
    func loginApi() {
        var resource = Resource<BaseModel>(url: HttpNetworkRoute.Auth.login)
        resource.httpMethod = .post
        resource.params = ["email": email, "password": password]
        ApiClient.sharedInstance.sendRequest(withRes: resource) { [unowned self] result in
            switch result {
            case .success(_):
                isHome = true
                commonAlert(message: Constant.Message.loginsuccess)
            case .failure(let error):
                commonAlert(message: error.messsage)
            }
        }
    }
}
extension LoginVm {
    func loginValidation() {
        if email.isEmpty {
            commonAlert(message: Constant.Message.email)
        } else if password.isEmpty {
            commonAlert(message: Constant.Message.password)
        }else {
            loginApi()
        }
    }
}
extension LoginVm {
    func commonAlert(message: String) {
        self.message = message
        showToast.toggle()
    }
}
