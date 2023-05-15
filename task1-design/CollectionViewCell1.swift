//
//  CollectionViewCell1.swift
//  task1-design
//
//  Created by Sohila on 14/05/2023.
//

import UIKit

class CollectionViewCell1: UICollectionViewCell {
    
    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
//        self.contentView.layer.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
//        self.contentView.layer.borderColor = #colorLiteral(red: 0.9019607843, green: 0.9019607843, blue: 0.9019607843, alpha: 1)
//        self.contentView.layer.borderWidth = 0.5
//        self.contentView.layer.cornerRadius = 20
//        self.contentView.layer.masksToBounds = true
    }
}
