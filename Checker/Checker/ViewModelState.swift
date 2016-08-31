//
//  ViewModelState.swift
//  Checker
//
//  Created by Vinicius Carvalho on 31/08/16.
//  Copyright © 2016 Vinicius Carvalho. All rights reserved.
//

import UIKit

enum ViewModelState {
    
    case Idle
    case Loading(percent :Float)
    case Error(ErrorType)
    case Success
    case noEvents
    
    static let InfiniteLoading :ViewModelState = .Loading(percent: -1)
    
}

