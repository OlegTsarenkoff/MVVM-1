//
//  TableViewCellViewModelType.swift
//  MVVM-1
//
//  Created by Oleg Tsarenkoff on 9.08.21.
//

import Foundation

protocol TableViewCellViewModelType: AnyObject {
    
    var fullName: String { get }
    var age: String { get }
}
