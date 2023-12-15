//
//  InterestListViewController.swift
//  Example
//
//  Created by li.wenxiu on 2023/12/14.
//

import UIKit
import PlainListViewController
import NavigationModule

class InterestListViewController: PlainListViewController<Interest, InterestListCell> {
    
    @NavigationModule var navigationModule
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "兴趣"
        
        let backItem = UIBarButtonItem(image: UIImage(systemName: "chevron.backward"), primaryAction: UIAction.init(handler: { [weak self] _ in
            self?.navigationController?.popViewController(animated: true)
        }))
        navigationItem.leftBarButtonItem = backItem
    }
}

class InterestListDataProvider: AnyPlainListDataProvider<Interest> {
    override func fetchData(offset: Int) async throws -> PlainListResponse<Interest> {
        
//        return .init(list: [], hasNext: false, nextOffset: 0)
        
        return .init(list: [
            Interest(id: "0", intro: "喜欢看电影、小说，喜欢唱歌、打牌，打麻将，还喜欢游泳，打羽毛球。喜欢看电影、小说，喜欢唱歌、打牌，打麻将，还喜欢游泳，打羽毛球。喜欢看电影、小说，喜欢唱歌、打牌，打麻将，还喜欢游泳，打羽毛球。喜欢看电影、小说，喜欢唱歌、打牌，打麻将，还喜欢游泳，打羽毛球。喜欢看电影、小说，喜欢唱歌、打牌，打麻将，还喜欢游泳，打羽毛球。"),
            Interest(id: "1", intro: "喜欢看电影、小说，喜欢唱歌、打牌，打麻将，还喜欢游泳，打羽毛球。喜欢看电影、小说，喜欢唱歌、打牌，打麻将，还喜欢游泳，打羽毛球。"),
            Interest(id: "2", intro: "喜欢看电影、小说，还喜欢游泳，打羽毛球。"),
            Interest(id: "3", intro: "喜欢看电影、小说，还喜欢游泳，打羽毛球。"),
            Interest(id: "4", intro: "喜欢看电影、小说，还喜欢游泳，打羽毛球。"),
            Interest(id: "5", intro: "喜欢看电影、小说，还喜欢游泳，打羽毛球。"),
            Interest(id: "6", intro: "喜欢看电影、小说，还喜欢游泳，打羽毛球。"),
            Interest(id: "7", intro: "喜欢看电影、小说，喜欢唱歌、打牌，打麻将，还喜欢游泳，打羽毛球。"),
            Interest(id: "8", intro: "喜欢看电影、小说，还喜欢游泳，打羽毛球。"),
            Interest(id: "9", intro: "喜欢看电影、小说，喜欢唱歌、打牌，打麻将，还喜欢游泳，打羽毛球。"),
            Interest(id: "10", intro: "喜欢看电影、小说，还喜欢游泳，打羽毛球。"),
            Interest(id: "11", intro: "喜欢看电影、小说，还喜欢游泳，打羽毛球。"),
            Interest(id: "12", intro: "喜欢看电影、小说，还喜欢游泳，打羽毛球。"),
            Interest(id: "0", intro: "喜欢看电影、小说，喜欢唱歌、打牌，打麻将，还喜欢游泳，打羽毛球。喜欢看电影、小说，喜欢唱歌、打牌，打麻将，还喜欢游泳，打羽毛球。喜欢看电影、小说，喜欢唱歌、打牌，打麻将，还喜欢游泳，打羽毛球。喜欢看电影、小说，喜欢唱歌、打牌，打麻将，还喜欢游泳，打羽毛球。喜欢看电影、小说，喜欢唱歌、打牌，打麻将，还喜欢游泳，打羽毛球。"),], hasNext: false, nextOffset: 0)
    }
}
