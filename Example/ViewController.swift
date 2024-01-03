//
//  ViewController.swift
//  Example
//
//  Created by li.wenxiu on 2023/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func simpleListButtonTapped(_ sender: Any) {
        let userListVC = UserListViewController(dataProvider: UserListDataProvider())
        navigationController?.navigationBar.isHidden = true
        navigationController?.pushViewController(userListVC, animated: true)
    }
    
    @IBAction func clearBarVButtonTapped(_ sender: Any) {
        let userListVC = UserListViewController(dataProvider: UserListDataProvider())
        userListVC.barStyle = .clear
        navigationController?.navigationBar.isHidden = true
        navigationController?.pushViewController(userListVC, animated: true)
    }
    
    @IBAction func solidButtonTapped(_ sender: Any) {
        let userListVC = UserListViewController(dataProvider: UserListDataProvider())
        userListVC.barStyle = .solid(UIColor.orange)
        navigationController?.navigationBar.isHidden = true
        navigationController?.pushViewController(userListVC, animated: true)
    }
    
    @IBAction func solidV2ButtonTapped(_ sender: Any) {
        let userListVC = UserListViewController(dataProvider: UserListDataProvider())
        userListVC.barStyle = .solid(UIColor.purple)
        userListVC.autoAdjustAlpha = true
        navigationController?.navigationBar.isHidden = true
        navigationController?.pushViewController(userListVC, animated: true)
    }
    
    @IBAction func transparentButtonTapped(_ sender: Any) {
        let userListVC = UserListViewController(dataProvider: UserListDataProvider())
        userListVC.barStyle = .transparent
        navigationController?.navigationBar.isHidden = true
        navigationController?.pushViewController(userListVC, animated: true)
    }
    
}
