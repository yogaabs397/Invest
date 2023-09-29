//
//  Resource.swift
//  Invest Trial
//
//  Created by  on 28/09/23.
//

import Foundation
import Alamofire
import SwiftyJSON


protocol BaseSwiftyJSON {
    
    init(json: JSON)
    
}
struct Resource<T: BaseSwiftyJSON> {
    
    var url: String
    var httpMethod: HTTPMethod = .get
    var params: Parameters? = nil
    
}
extension Resource {
    
    init(url: String) {
        self.url = url
    }
    
}

