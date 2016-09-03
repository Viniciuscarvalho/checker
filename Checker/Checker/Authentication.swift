//
//  Autentication.swift
//  Checker
//
//  Created by Vinicius Carvalho on 16/06/16.
//  Copyright © 2016 Vinicius Carvalho. All rights reserved.
//

import UIKit
import ObjectMapper

class Authentication: Mappable {

    var keyEvent: String?
    var sign: Bool
    
    init?(_ map: Map) {}
    
    mutating func mapping(map: Map) {
        
        keyEvent <- map["key"]
        clientId <- map["sign"]
        
    }
    
}


