//
//  GizemTableViewCell.swift
//  test
//
//  Created by Gizem Coşkun on 19.04.2023.
//

import UIKit

class GizemTableViewCell: UITableViewCell {

    @IBOutlet var urlTextField: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        print("Should begin editing")
        return true;
    }
    
    @IBAction func continueButton(_ sender: Any) {
        print("veri alındı: \(self.urlTextField.text!)")
        if let url = URL(string: urlTextField.text!) {
            UIApplication.shared.open(url)
        } 
    }
}
