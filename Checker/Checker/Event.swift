//
//  Event.swift
//  Checker
//
//  Created by Vinicius Carvalho on 31/08/16.
//  Copyright © 2016 Vinicius Carvalho. All rights reserved.
//

import UIKit
import ObjectMapper

struct Event: Mappable {

    var id: Int!
    var name: String?
    var time: String?
    
    init?(_ map: Map) {}
    
    mutating func mapping(map: Map) {
    
        id <- map["id"]
        name <- map["name"]
        time <- map["time"]
    }
    
}
