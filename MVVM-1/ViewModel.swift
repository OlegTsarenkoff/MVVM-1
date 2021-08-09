//
//  ViewModel.swift
//  MVVM-1
//
//  Created by Oleg Tsarenkoff on 9.08.21.
//

import Foundation

class ViewModel {
    
    private var profile = Profile (name: "Ivan", secondName: "Petrov" , age: 32)
    
    var name: String {
        return profile.name
    }
    
    var secondName: String {
        return profile.secondName
    }
    var age: String {
        return String(describing: profile.age)
    }
}
