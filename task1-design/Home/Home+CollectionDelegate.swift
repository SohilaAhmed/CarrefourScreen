//
//  Home+CollectionDelegate.swift
//  task1-design
//
//  Created by Sohila on 15/05/2023.
//

import UIKit

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 7
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        //collectionView3
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier3, for: indexPath) as! CollectionViewCell3
        cell.label.text = "20.00 BHD"
        
        return cell

    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let cell = collectionView.cellForItem(at: indexPath) as? CollectionViewCell2{
            cell.contentView.layer.backgroundColor = #colorLiteral(red: 0.0862745098, green: 0.5254901961, blue: 0.6862745098, alpha: 1)
        }
        
        if let cell = collectionView.cellForItem(at: indexPath) as? CollectionViewCell1{
            cell.contentView.layer.backgroundColor = #colorLiteral(red: 0.9450980392, green: 0.9843137255, blue: 1, alpha: 1)
            cell.contentView.layer.borderColor = #colorLiteral(red: 0.0862745098, green: 0.5254901961, blue: 0.6862745098, alpha: 1)
        }
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        if let cell = collectionView.cellForItem(at: indexPath) as? CollectionViewCell2{
            cell.contentView.layer.backgroundColor = #colorLiteral(red: 0.9607843137, green: 0.9568627451, blue: 0.9568627451, alpha: 1)
        }
        if let cell = collectionView.cellForItem(at: indexPath) as? CollectionViewCell1{
            cell.contentView.layer.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            cell.contentView.layer.borderColor = #colorLiteral(red: 0.9019607843, green: 0.9019607843, blue: 0.9019607843, alpha: 1)
        }
    }
    
    
    func collectionView(
        _ collectionView: UICollectionView,
        viewForSupplementaryElementOfKind kind: String,
        at indexPath: IndexPath
    ) -> UICollectionReusableView {
        switch kind {
        case UICollectionView.elementKindSectionHeader:
            
            let headerView = collectionView.dequeueReusableSupplementaryView(
                ofKind: kind,
                withReuseIdentifier: "headerViewItem",
                for: indexPath)
            
            
            guard let typedHeaderView = headerView as? HeaderView
            else { return headerView }
            
            
            
            typedHeaderView.addSubview(typedHeaderView.headerView)
            
            return typedHeaderView
        default:
            // 5
            assert(false, "Invalid element type")
        }
    }
    
    
}

extension HomeViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        return CGSize(width: 177, height: 233)

    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.4
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 1, left: 15, bottom: 3, right: 15)
    }
    
    
}
