//
//  TableViewCell.swift
//  test
//
//  Created by Gizem Coşkun on 19.04.2023.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet private var urlTextField: UITextField!
    @IBOutlet private var continueButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
