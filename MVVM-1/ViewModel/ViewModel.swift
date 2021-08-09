//
//  ViewModel.swift
//  MVVM-1
//
//  Created by Oleg Tsarenkoff on 9.08.21.
//

import Foundation

class ViewModel: TableViewViewModelType {

    private var selectedIndexPath: IndexPath?
    
    var profiles = [Profile(name: "Niko", secondName: "Bellic", age: 43),
                Profile(name: "Carl", secondName: " Johnson", age: 33),
                Profile(name: "Tommy", secondName: "Vercetti", age: 35)]
    
    func numberOfRows() -> Int {
        return profiles.count
    }
    
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType? {
        let profile = profiles[indexPath.row]
        return TableViewCellViewModel(profile: profile)
    }
    
    func viewModelForSelectedRow() -> DetailViewModelType? {
        guard let selectedIndexPath = selectedIndexPath else { return nil }
        return DetailViewModel(profile: profiles[selectedIndexPath.row])
    }
    
    func selectRow(atIndexPath indexPath: IndexPath) {
        self.selectedIndexPath = indexPath
    }
}
