//
//  TableViewModelType.swift
//  MVVM-1
//
//  Created by Oleg Tsarenkoff on 9.08.21.
//

import Foundation

protocol TableViewModelType  {
    var numberOfRows: Int { get }
    var profiles: [Profile] { get }
}
