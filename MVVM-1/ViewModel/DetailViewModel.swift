//
//  DetailViewModel.swift
//  MVVM-1
//
//  Created by Oleg Tsarenkoff on 9.08.21.
//

import Foundation

class DetailViewModel: DetailViewModelType {

    private var profile: Profile
    
    var description: String {
        return String(describing: "\(profile.name) \(profile.secondName), age: \(profile.age)")
    }
    
    var age: Box<String?> = Box(nil)
     
    init(profile: Profile) {
        self.profile = profile
    }
}
