//
//  InvestModel.swift
//  Invest Trial
//
//  Created by  on 28/09/23.
//

import Foundation
import SwiftyJSON


class InvestModel {
    var avatar: String = String()
    var email: String = String()
    var first_name : String = String()
    var last_name : String = String()
    var name : String = String()
    var year : Int = Int()
    
    init() { }
    
    init(json: JSON) {
        self.year = json["year"].int ?? Int()
        self.name  = json["name"].string ?? String()
        self.avatar = json["avatar"].string ?? String()
        self.email = json["email"].string ?? String()
        self.first_name = json["first_name"].string ?? String()
        self.last_name = json["last_name"].string ?? String()
    }
}
