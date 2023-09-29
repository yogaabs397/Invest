//
//  RegisterMapModel.swift
//  Invest Trial
//
//  Created by  on 28/09/23.
//

import Foundation
import SwiftyJSON
import ObjectMapper



struct RegisterMapModel: Mappable  {
    
    var email: String = String()
    var password: String = String()
    
    init() {}
    init?(map: Map) {
    }
    
    mutating func mapping(map: ObjectMapper.Map) {
        email              <- map["email"]
        password           <- map["password"]
    }
    
}

