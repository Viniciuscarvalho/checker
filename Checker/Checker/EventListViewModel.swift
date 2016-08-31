//
//  EventListViewModel.swift
//  Checker
//
//  Created by Vinicius Carvalho on 31/08/16.
//  Copyright © 2016 Vinicius Carvalho. All rights reserved.
//

import Foundation

protocol Event {
    var title: String { get }
    var nameUser: String { get }
    var date: String { get }
}

class EventListViewModel: Event {

    var title: String
    var nameUser: String
    var date: String

}