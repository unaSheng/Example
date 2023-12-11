//
//  UserListViewController.swift
//  Example
//
//  Created by li.wenxiu on 2023/9/10.
//

import UIKit
import PlainListViewController
import NavigationModule

class UserListViewController: PlainListViewController<User, UserListCell> {
    
    @NavigationModule var navigationModule
    
    override var supportPullToRefresh: Bool {
        false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "列表"
        
        let backItem = UIBarButtonItem(image: UIImage(systemName: "chevron.backward"), primaryAction: UIAction.init(handler: { [weak self] _ in
            self?.navigationController?.popViewController(animated: true)
        }))
        navigationItem.leftBarButtonItems = [backItem]
        
        let editItem = BadgeBarButtonItem(title: "编辑", primaryAction: UIAction.init(handler: { _ in
            debugPrint("edit")
        }))
        
        editItem.badge = .text("9")
        
        let shareItem = BadgeBarButtonItem(image: UIImage(systemName: "square.and.arrow.up"), primaryAction: UIAction.init(handler: { _ in
            debugPrint("share")
        }))
        shareItem.badge = .dot
        
        let moreItem = BadgeBarButtonItem(image: UIImage(systemName: "ellipsis"), primaryAction: UIAction.init(handler: { _ in
            debugPrint("more")
        }))
        
        let items: [UIBarButtonItem] = [editItem, shareItem, moreItem]
        items.forEach({ $0.tintColor = .black })
        navigationItem.rightBarButtonItems = items
    }
}

class UserListDataProvider: AnyPlainListDataProvider<User> {
    override func fetchData(offset: Int) async throws -> PlainListResponse<User> {
        return .init(list: [
            User(id: "", nick: "吃不胖1", intro: "我有养生秘诀，想知道吗？我有养生秘诀，想知道吗？我有养生秘诀，想知道吗？我有养生秘诀，想知道吗？我有养生秘诀，想知道吗？我有养生秘诀，想知道吗？"),
            User(id: "", nick: "吃不胖2", intro: "我有养生秘诀，想知道吗？"),
            User(id: "", nick: "吃不胖3", intro: "我有养生秘诀，想知道吗？"),
            User(id: "", nick: "吃不胖4", intro: "我有养生秘诀，想知道吗？"),
            User(id: "", nick: "吃不胖5", intro: "我有养生秘诀，想知道吗？"),
            User(id: "", nick: "吃不胖6", intro: "我有养生秘诀，想知道吗？"),
            User(id: "", nick: "吃不胖7", intro: "我有养生秘诀，想知道吗？"),
            User(id: "", nick: "吃不胖8", intro: "我有养生秘诀，想知道吗？"),], hasNext: false, nextOffset: 0)
    }
}
