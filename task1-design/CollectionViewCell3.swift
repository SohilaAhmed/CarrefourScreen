//
//  CollectionViewCell3.swift
//  task1-design
//
//  Created by Sohila on 14/05/2023.
//

import UIKit

class CollectionViewCell3: UICollectionViewCell {
    @IBOutlet weak var label: UILabel!
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.contentView.layer.borderColor = UIColor.darkGray.cgColor
        self.contentView.layer.borderWidth = 0.3
        self.contentView.layer.cornerRadius = 20
        self.contentView.layer.masksToBounds = true
    }
}
