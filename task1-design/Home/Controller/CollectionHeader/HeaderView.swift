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

extension HeaderView: UICollectionViewDelegate, UICollectionViewDataSource{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        if(collectionView == collectionView2){
            return 1
            
        }
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if(collectionView == collectionView2){
            return 7
        }
        return 7
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //collectionView2
        if(collectionView == collectionView2){
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier2, for: indexPath) as! CollectionViewCell2
            cell.label.text = "Fish"
            
            if indexPath.row == selectedIndexCollection2 {
                cell.contentView.backgroundColor = #colorLiteral(red: 0.0862745098, green: 0.5254901961, blue: 0.6862745098, alpha: 1)
            } else {
                cell.contentView.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.9568627451, blue: 0.9568627451, alpha: 1)
            }
            
            return cell
        }
        
        //        collectionView1
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier1, for: indexPath) as! CollectionViewCell1
        
        cell.img.image = UIImage(named: "Food")
        cell.label.text = "Food"
        
        if indexPath.row == selectedIndexCollection1 {
            cell.contentView.layer.backgroundColor = #colorLiteral(red: 0.9450980392, green: 0.9843137255, blue: 1, alpha: 1)
            cell.contentView.layer.borderColor = #colorLiteral(red: 0.0862745098, green: 0.5254901961, blue: 0.6862745098, alpha: 1)
        } else {
            cell.contentView.layer.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            cell.contentView.layer.borderColor = #colorLiteral(red: 0.9019607843, green: 0.9019607843, blue: 0.9019607843, alpha: 1)
        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if collectionView.cellForItem(at: indexPath) is CollectionViewCell2 {
            
            if selectedIndexCollection2 == indexPath.row {
                return
            }
            
            let previousIndexPath = IndexPath(row: selectedIndexCollection2, section: 0)
            let previousCell = collectionView.cellForItem(at: previousIndexPath)
            previousCell?.contentView.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.9568627451, blue: 0.9568627451, alpha: 1)
            
            let currentCell = collectionView.cellForItem(at: indexPath)
            currentCell?.contentView.backgroundColor = #colorLiteral(red: 0.0862745098, green: 0.5254901961, blue: 0.6862745098, alpha: 1)
            
            selectedIndexCollection2 = indexPath.row
        }
        
        
        if collectionView.cellForItem(at: indexPath) is CollectionViewCell1{
            if selectedIndexCollection1 == indexPath.row {
                return
            }
            
            let previousIndexPath = IndexPath(row: selectedIndexCollection1, section: 0)
            let previousCell = collectionView.cellForItem(at: previousIndexPath)
            previousCell?.contentView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            previousCell?.contentView.layer.borderColor = #colorLiteral(red: 0.9019607843, green: 0.9019607843, blue: 0.9019607843, alpha: 1)
            
            let currentCell = collectionView.cellForItem(at: indexPath)
            currentCell?.contentView.backgroundColor = #colorLiteral(red: 0.9450980392, green: 0.9843137255, blue: 1, alpha: 1)
            currentCell?.contentView.layer.borderColor = #colorLiteral(red: 0.0862745098, green: 0.5254901961, blue: 0.6862745098, alpha: 1)
            
            selectedIndexCollection1 = indexPath.row
            
        }
        
    }
    
    
}




extension HeaderView: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if(collectionView == collectionView2){
            return CGSize(width: 90, height: 40)
        }
        
        return CGSize(width: 150, height: 133)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.4
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 1, left: 10, bottom: 5, right: 10)
    }
    
}
