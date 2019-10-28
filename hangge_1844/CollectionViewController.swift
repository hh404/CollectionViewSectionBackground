//
//  CollectionViewController.swift
//  hangge_1844
//
//  Created by hangge on 2017/11/5.
//  Copyright © 2017年 hangge.com. All rights reserved.
//

import UIKit

//重用单元格identifier
private let cellIdentifier = "Cell"

class CollectionViewController: UICollectionViewController, SectionBgCollectionViewDelegate {
    var dataArray: [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()

        //注册可重用的单元格
        self.collectionView!.register(UICollectionViewCell.self,
                                      forCellWithReuseIdentifier: cellIdentifier)
        
        //将collectionView背景色设为白色
        self.collectionView?.backgroundColor = UIColor.white
        
        let layout = SectionBgCollectionViewLayout.init()
        layout.estimatedItemSize = CGSize.init(width: 10, height: 10)
        layout.minimumLineSpacing = 2
        layout.minimumInteritemSpacing = 10
        self.collectionView?.collectionViewLayout = layout
        collectionView?.register(CollectionViewCell.self, forCellWithReuseIdentifier: "CollectionViewCell")
        
        dataArray.append("近段时间开发的进口发动机快递费")
        dataArray.append("近段时间开发的进口的第三方库拉德芳斯考虑到福克斯拉德芳斯发动机快递费")
        dataArray.append("近段时间开发的进充值卡等考虑大快来撒克里斯卡拉是打开了圣诞快乐sad热二二二热热热饭刚吃饭口发动机快递费")
        dataArray.append("近段时间开发的进口发风风光光电饭锅地方动机快递费")
        dataArray.append("近段时间开发个非官方个很反感和规范化风格和规范化个回复的进口发动机快递费")
        dataArray.append("近段时间开发的通天塔进口发动机快递费")
        dataArray.append("近段时间开发的进口嘎嘎嘎好符合规范个梵蒂冈发给对方的观点苟富贵电饭锅电饭锅东方风格的符合规范化股份规范化贵航股份发动机快递费")
        dataArray.append("近段时间开发的进反反复复付付方法口发动机快递费")
        dataArray.append("近段时间开发的进口发动机快递费")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    //返回分区数
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    //返回每个分区下单元格个数
    override func collectionView(_ collectionView: UICollectionView,
                                 numberOfItemsInSection section: Int) -> Int {
        //奇数section里有8个单元格，偶数section里有4个单元格
//        return (section % 2 == 1) ? 4 : 8
        return 1
    }

    //返回每个单元格视图
    override func collectionView(_ collectionView: UICollectionView,
                             cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: CollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell",
                                                                          for: indexPath) as! CollectionViewCell
        cell.backgroundColor = UIColor.white
        cell.label.text = dataArray[indexPath.item]
        cell.label.numberOfLines = 0
        return cell
    }
    
    //返回每个分区的内边距
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        let numberOfItems = collectionView.numberOfItems(inSection: section)
        return numberOfItems > 0 ? UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10) :
            UIEdgeInsets.zero
    }
    
    //返回每个分区的背景色
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        backgroundColorForSectionAt section: Int) -> UIColor {
        if section == 0 {
            return UIColor.green
        } else if section == 1 {
            return UIColor.cyan
        } else if section == 2 {
            return UIColor.blue
        }
        return UIColor.purple
    }
}
