//
//  TableViewViewModelType.swift
//  MVVM-1
//
//  Created by Oleg Tsarenkoff on 9.08.21.
//

import Foundation

protocol TableViewViewModelType {
    
    func numberOfRows() -> Int
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType?
    
    func viewModelForSelectedRow() -> DetailViewModelType?
    func selectRow(atIndexPath indexPath: IndexPath)
    
}
