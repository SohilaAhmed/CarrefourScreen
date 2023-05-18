//
//  HeaderView.swift
//  task1-design
//
//  Created by Sohila on 15/05/2023.
//

import UIKit

class HeaderView: UICollectionReusableView {
    
    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var collectionView1: UICollectionView!{
        didSet{
            collectionView1.dataSource = self
            collectionView1.delegate = self
        }
    }
    
    @IBOutlet weak var collectionView2: UICollectionView!{
        didSet{
            collectionView2.dataSource = self
            collectionView2.delegate = self
        }
    }
    
    var selectedIndexCollection2 = 0
    var selectedIndexCollection1 = 0
}
 
