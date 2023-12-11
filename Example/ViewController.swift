//
//  ViewController.swift
//  Example
//
//  Created by li.wenxiu on 2023/11/22.
//

import UIKit
import SimplePlainList

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func simpleListButtonTapped(_ sender: Any) {
        let userListVC = UserListViewController(dataProvider: UserListDataProvider())
        navigationController?.navigationBar.isHidden = true
        navigationController?.pushViewController(userListVC, animated: true)
    }
    
}

