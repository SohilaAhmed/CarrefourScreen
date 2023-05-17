//
//  ItemsCollectionViewCell.swift
//  task1-design
//
//  Created by Sohila on 17/05/2023.
//

import UIKit

let reuseIdentifier = "item"

class ItemsCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var cellView: UIView!
    
    @IBOutlet weak var offerView: UIView!
    override func layoutSubviews() {
        super.layoutSubviews()
        let cornerRadius: CGFloat = 20
        let maskLayer = CAShapeLayer()
        maskLayer.path = UIBezierPath(roundedRect: offerView.bounds,
                                       byRoundingCorners: [.bottomRight],
                                       cornerRadii: CGSize(width: cornerRadius, height: cornerRadius)).cgPath
        offerView.layer.mask = maskLayer
        
        //        self.contentView.layer.borderColor = #colorLiteral(red: 1, green: 0.9019607843, blue: 0.9019607843, alpha: 1)
//        self.contentView.layer.borderWidth = 0.5
//        self.contentView.layer.cornerRadius = 20
//        self.contentView.layer.masksToBounds = true
    }
}
