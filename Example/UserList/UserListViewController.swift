//
//  UserListViewController.swift
//  Example
//
//  Created by li.wenxiu on 2023/9/10.
//

import UIKit
import PlainListViewController
import NavigationModule

class UserListViewController: PlainListViewController<User, UserListCell>, UIGestureRecognizerDelegate {
    
    @NavigationModule var navigationModule
    
    
    var barStyle: _NavigationModule.BackgroundStyle = .default
    var autoAdjustAlpha = false
    
    var barButtonItems: [UIBarButtonItem] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "用户"
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self
        
        let backItem = UIBarButtonItem(image: UIImage(systemName: "chevron.backward"), primaryAction: UIAction.init(handler: { [weak self] _ in
            self?.navigationController?.popViewController(animated: true)
        }))
        navigationItem.leftBarButtonItem = backItem
        
        let editItem = BadgeBarButtonItem(title: "编辑", primaryAction: UIAction.init(handler: { [weak self] _ in
            let interestListVC = InterestListViewController(dataProvider: InterestListDataProvider())
            self?.navigationController?.navigationBar.isHidden = true
            self?.navigationController?.pushViewController(interestListVC, animated: true)
        }))
        editItem.badge = .text("9")
        
        let shareItem = BadgeBarButtonItem(image: UIImage(systemName: "square.and.arrow.up"), primaryAction: UIAction.init(handler: { _ in
            debugPrint("share")
        }))
        shareItem.badge = .dot
        
        let moreItem = BadgeBarButtonItem(image: UIImage(systemName: "ellipsis"), primaryAction: UIAction.init(handler: { _ in
            debugPrint("more")
        }))
        navigationItem.rightBarButtonItems = [editItem, shareItem, moreItem]
        
        barButtonItems = [backItem, editItem, shareItem, moreItem]
        barButtonItems.forEach({ $0.tintColor = .black })
        
        navigationModule.rightBarButtonItemSpacing = 0
        navigationModule.backgroundStyle = barStyle
        if case .solid = barStyle, autoAdjustAlpha {
            self.title = nil
        } else if case .clear = barStyle {
            self.title = nil
            self.view.backgroundColor = .lightGray
        } else if case .transparent = barStyle {
            self.title = nil
        }
    }
    
    override func configure(cell: UserListCell, indexPath: IndexPath, item: User) {
        if case .clear = barStyle {
            cell.updateLineColor(color: UIColor.darkGray.withAlphaComponent(0.3))
        }
    }
    
//    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
//        guard case .solid(let uIColor) = barStyle, autoAdjustAlpha else {
//            return
//        }
//        var alpha: CGFloat = 0
//        let contentOffsetY = scrollView.contentOffset.y + collectionView.adjustedContentInset.top
//        if contentOffsetY >= 0 {
//            alpha = contentOffsetY / 20.0
//        }
//        navigationModule.backgroundStyle = .solid(uIColor.withAlphaComponent(alpha))
//        
//        let color: UIColor
//        if contentOffsetY <= 10 {
//            let alpha = contentOffsetY / 10
//            color = UIColor.black.withAlphaComponent(1 - alpha)
//        } else {
//            let alpha = (contentOffsetY - 10) / 10
//            color = UIColor.white.withAlphaComponent(alpha)
//        }
//        barButtonItems.forEach({ $0.tintColor = color })
//    }
}

class UserListDataProvider: AnyPlainListDataProvider<User> {
    override func fetchData(offset: Int) async throws -> PlainListResponse<User> {
        if offset == 0 {
            return .init(list: [
                User(id: "", nick: "吃不胖1", intro: "我有养生秘诀，想知道吗？我有养生秘诀，想知道吗？我有养生秘诀，想知道吗？我有养生秘诀，想知道吗？我有养生秘诀，想知道吗？我有养生秘诀，想知道吗？"),
                User(id: "", nick: "吃不胖2", intro: "我有养生秘诀，想知道吗？"),
                User(id: "", nick: "吃不胖3", intro: "我有养生秘诀，想知道吗？"),
                User(id: "", nick: "吃不胖4", intro: "我有养生秘诀，想知道吗？"),
                User(id: "", nick: "吃不胖5", intro: "我有养生秘诀，想知道吗？"),
                User(id: "", nick: "吃不胖6", intro: "我有养生秘诀，想知道吗？"),
                User(id: "", nick: "吃不胖7", intro: "我有养生秘诀，想知道吗？"),
                User(id: "", nick: "吃不胖8", intro: "我有养生秘诀，想知道吗？"),
                User(id: "", nick: "吃不胖9", intro: "我有养生秘诀，想知道吗？"),
                User(id: "", nick: "吃不胖10", intro: "我有养生秘诀，想知道吗？"),
                User(id: "", nick: "吃不胖11", intro: "我有养生秘诀，想知道吗？"),
                User(id: "", nick: "吃不胖12", intro: "我有养生秘诀，想知道吗？"),
                User(id: "", nick: "吃不胖13", intro: "我有养生秘诀，想知道吗？"),
                User(id: "", nick: "吃不胖14", intro: "我有养生秘诀，想知道吗？"),
                User(id: "", nick: "吃不胖15", intro: "我有养生秘诀，想知道吗？"),], hasNext: true, nextOffset: 1)
        } else {
            return .init(list: [
                User(id: "", nick: "吃不胖16", intro: "我有养生秘诀，想知道吗？我有养生秘诀，想知道吗？我有养生秘诀，想知道吗？我有养生秘诀，想知道吗？我有养生秘诀，想知道吗？我有养生秘诀，想知道吗？"),
                User(id: "", nick: "吃不胖15", intro: "我有养生秘诀，想知道吗？"),
                User(id: "", nick: "吃不胖17", intro: "我有养生秘诀，想知道吗？"),
                User(id: "", nick: "吃不胖18", intro: "我有养生秘诀，想知道吗？"),], hasNext: false, nextOffset: 2)
        }
    }
}
