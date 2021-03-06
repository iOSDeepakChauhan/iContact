//
//  ContactDetailTableViewCell.swift
//  iContact
//
//  Created by Deepak  on 09/02/20.
//  Copyright © 2019 Deepak Chauhan. All rights reserved.
//

import UIKit

typealias UpdateClosure = (_ text: String)-> Void

class ContactDetailTableViewCell: UITableViewCell {
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    var didEndEditing: UpdateClosure? = nil
    var didTapReturnKey: (()-> Void)? = nil
    static func identifier()-> String {
        return "ContactDetailTableViewCell"
    }
}

extension ContactDetailTableViewCell: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
        if let _didEndEditing = self.didEndEditing, let _text = textField.text {
            textField.resignFirstResponder()
            _didEndEditing(_text)
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let _didTapReturnKey = self.didTapReturnKey, textField.returnKeyType == .next {
            _didTapReturnKey()
        } else {
            textField.resignFirstResponder()
        }
        return true
    }
}

