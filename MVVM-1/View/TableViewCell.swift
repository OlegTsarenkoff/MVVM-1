//
//  TableViewCell.swift
//  MVVM-1
//
//  Created by Oleg Tsarenkoff on 9.08.21.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
   
    weak var viewModel: TableViewCellViewModelType? {
        willSet(viewModel) {
            guard let viewModel = viewModel else { return }
            fullNameLabel.text = viewModel.fullName
            ageLabel.text = viewModel.age
        }
    }
}
