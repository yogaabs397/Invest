//
//  InvestVm.swift
//  Invest Trial
//
//  Created by  on 28/09/23.
//

import Foundation


class InvestVm: ObservableObject  {
    
    @Published  var investData = [InvestModel]()
    @Published  var bestData = [InvestModel]()
    @Published  var investType : InvestSubtype = .bestplan
    
   
    func investApi(with investType: InvestSubtype) {
        var url = String()
        investSubtypeData(investType: investType) { type in
            url = type
        }
        var resource = Resource<BaseModel>(url: url)
        resource.httpMethod = .get
        ApiClient.sharedInstance.sendRequest(withRes: resource) { [unowned self] result in
            
            switch result {
            case .success(let baseModel):
                DispatchQueue.main.async { [unowned self] in
                    switch investType {
                    case .investmentGuide:
                        investData = baseModel.investData
                    case .bestplan:
                        bestData = baseModel.investData
                    }
                }
            case .failure(_):
                break
            }
        }
    }
}
extension InvestVm {
    func investSubtypeData(investType: InvestSubtype,investRes: @escaping((String) -> Void)) {
        switch investType {
        case .investmentGuide:
             investRes(HttpNetworkRoute.Auth.invest)
        case .bestplan:
            investRes(HttpNetworkRoute.Auth.bestplan)
        }
    }
}
