//
//  CollectionViewCell.swift
//  hangge_1844
//
//  Created by huangjianwu on 2019/10/28.
//  Copyright © 2019 hangge. All rights reserved.
//

import UIKit
import SnapKit

class CollectionViewCell: UICollectionViewCell {
    let myContentView = UIView.init()
    let label = UILabel.init(frame: .zero)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        myContentView.backgroundColor = .yellow
        self.contentView.addSubview(myContentView)
        myContentView.snp.makeConstraints { (make) in
            make.top.bottom.left.equalToSuperview()
            make.right.equalToSuperview().priorityMedium()
            make.width.lessThanOrEqualTo(UIScreen.main.bounds.size.width - 20)
        }
        
        myContentView.addSubview(label)
        label.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        print(self)
    }
}
