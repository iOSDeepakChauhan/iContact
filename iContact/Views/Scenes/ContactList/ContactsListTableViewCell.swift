//
//  ContactsListTableViewCell.swift
//  iContact
//
//  Created by Deepak  on 09/02/20.
//  Copyright © 2019 Deepak Chauhan. All rights reserved.
//

import UIKit

class ContactsListTableViewCell: UITableViewCell {

    @IBOutlet weak var contactImageView: UIImageView!
    @IBOutlet weak var contactNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        customSetup()
    }

    private func customSetup() {
        self.contactImageView.backgroundColor = UIColor.AppTheme.orange
        self.contactImageView.layer.cornerRadius = self.contactImageView.frame.size.height/2;
        self.contactImageView.layer.masksToBounds = true;
        self.contactImageView.layer.borderColor = UIColor.AppTheme.orange.cgColor
        self.contactImageView.layer.borderWidth = 2;
    }
    
    static func identifier()->String {
        return "ContactsListTableViewCell"
    }
}
