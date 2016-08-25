//
//  Autentication.swift
//  Checker
//
//  Created by Vinicius Carvalho on 16/06/16.
//  Copyright © 2016 Vinicius Carvalho. All rights reserved.
//

import UIKit
import Unbox

class Authentication: Unboxable {

    let keyEvent: String?
    let sign: Bool
    
    required init(unboxer: Unboxer) {
        keyEvent = unboxer.unbox("key")
        clientId = unboxer.unbox("sign")
        
    }
    
}


