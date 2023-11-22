//
//  UserListCell.swift
//  Example
//
//  Created by li.wenxiu on 2023/9/10.
//

import UIKit
import PlainListViewController

/// Example of creating plain list cell from nib
class UserListCell: PlainListCell<User>, NibInstantiatable {

    @IBOutlet private weak var usernameLabel: UILabel!
    @IBOutlet private weak var introLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func render(_ item: User) {
        usernameLabel.text = item.nick
        introLabel.text = item.intro
    }
}
