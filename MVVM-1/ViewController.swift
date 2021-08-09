//
//  ViewController.swift
//  MVVM-1
//
//  Created by Oleg Tsarenkoff on 9.08.21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var secondNameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    var profile: Profile? {
        didSet {
            guard let profile = profile else { return }
            
            self.nameLabel.text = profile.name
            self.secondNameLabel.text = profile.secondName
            self.ageLabel.text = String(profile.age)
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        profile = Profile (name: "Ivan", secondName: "Ivanov", age: 23)
    }
}

