//
//  HttpNetworkRoute.swift
//  Invest Trial
//
//  Created by Abservetech on 28/09/23.
//

import Foundation


public struct HttpNetworkRoute  {
    
    static let baseApi = "https://reqres.in/api/"
    
    struct Auth {
        static let register  = "register"
        static let login     = "login"
        static let invest    = "users?page=2"
        static let bestplan  = "unknown"
    }
    
}
