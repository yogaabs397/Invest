//
//  InvestVm.swift
//  Invest Trial
//
//  Created by Abservetech on 28/09/23.
//

import Foundation


class InvestVm {
    
    var succesHandler: ((BaseModel) -> ())?
    var errorhandler: ((String) -> ())?
    
}
extension InvestVm  {
    func investApi(with investType: InvestSubtype) {
        var url = String()
        switch investType {
        case .investmentGuide:
            url = HttpNetworkRoute.Auth.invest
        case .bestplan:
            url = HttpNetworkRoute.Auth.bestplan
        }
        var resource = Resource<BaseModel>(url: url)
        resource.httpMethod = .get
        ApiClient.sharedInstance.sendRequest(withRes: resource) { result in
            switch result {
            case .success(let baseModel):
                self.succesHandler?(baseModel)
            case .failure(let error):
                self.errorhandler?(error.messsage)
            }
        }
    }
}
