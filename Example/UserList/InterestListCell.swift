//
//  InterestListCell.swift
//  Example
//
//  Created by li.wenxiu on 2023/12/14.
//

import UIKit
import PlainListViewController

class InterestListCell: PlainListCell<Interest> {
    
    private let label = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubviews()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupSubviews()
    }
    
    override func render(_ item: Interest) {
        label.text = item.intro
    }
    
    private func setupSubviews() {
        label.numberOfLines = 0
        label.textColor = UIColor.black.withAlphaComponent(0.5)
        label.font = UIFont.systemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        addSubview(label)
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: self.topAnchor, constant: 12),
            label.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 12),
            label.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -12),
            label.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -12),
        ])
        
        let lineView = UIView()
        let rgb = 239/255.0
        lineView.backgroundColor = UIColor(red: rgb, green: rgb, blue: rgb, alpha: 1)
        addSubview(lineView)
        lineView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            lineView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            lineView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            lineView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            lineView.heightAnchor.constraint(equalToConstant: 1)
        ])
    }
}
