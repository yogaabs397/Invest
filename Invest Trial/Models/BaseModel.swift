//
//  BaseModel.swift
//  Invest Trial
//
//  Created by  on 28/09/23.
//

import Foundation
import SwiftyJSON



struct BaseModel: BaseSwiftyJSON {
    
    var message: String = String()
    var investData : [InvestModel] = [InvestModel]()
    var error: String = String()
    
    init() { }
    
    init(json: JSON) {
        self.error  = json["error"].string ?? String()
        self.message = json["message"].string ?? String()
        let invest = json["data"].array
        let investArr = invest?.compactMap({ data -> InvestModel in
            return InvestModel(json: data)
        })
        self.investData = investArr ?? [InvestModel]()
    }
    
}

struct Errormodel: Error {
    var messsage : String = String()
    var statusCode : Int = Int()
    
    init() {}
    init(json: JSON) {
        messsage = json["error"].string ?? String()
    }
}
