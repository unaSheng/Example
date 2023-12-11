//
//  RedView.swift
//  SimplePlainList
//
//  Created by li.wenxiu on 2023/11/22.
//

import UIKit

class RedView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.backgroundColor = .red
    }

}
