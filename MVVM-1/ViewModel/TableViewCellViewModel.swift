//
//  TableViewCellViewModel.swift
//  MVVM-1
//
//  Created by Oleg Tsarenkoff on 9.08.21.
//

import Foundation

class TableViewCellViewModel: TableViewCellViewModelType {

    private var profile: Profile
    
    var fullName: String {
        return profile.name + " " + profile.secondName
    }
    
    var age: String {
        return String(describing: profile.age)
    }
    
    init(profile: Profile) {
        self.profile = profile
    }
}
