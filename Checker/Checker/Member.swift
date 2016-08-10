//
//  Member.swift
//  Checker
//
//  Created by Vinicius Carvalho on 25/06/16.
//  Copyright © 2016 Vinicius Carvalho. All rights reserved.
//

import UIKit
import ObjectMapper

struct Member: Mappable {

    var id: Int!
    var name: String?
    var photo: String?
    var response: String?
    var rsvpCount : Int!
    var guest: Int!
    var latitude: String?
    var longitude: String?
    
    init?(_ map: Map) {}
    
    mutating func mapping(map: Map) {
        
        id <- map["id"]
        name <- map["name"]
        photo <- map["photo.photo_link"]
        response <- map["response"]
        rsvpCount <- map["event.yes_rsvp_count"]
        guests <- map["guests"]
        latitude <- map["venue.lat"]
        longitude <- map["venue.lon"]
    
    }
    
}
