//
//  CollectionViewCell2.swift
//  task1-design
//
//  Created by Sohila on 14/05/2023.
//

import UIKit

class CollectionViewCell2: UICollectionViewCell {
    
    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
      super.awakeFromNib()

//      let redView = UIView(frame: contentView)
//      redView.backgroundColor = #colorLiteral(red: 0.9019607843, green: 0.9019607843, blue: 0.9019607843, alpha: 1)
//      self.backgroundView = redView
//
//      let blueView = UIView(frame: contentView)
//      blueView.backgroundColor = #colorLiteral(red: 0.0862745098, green: 0.5254901961, blue: 0.6862745098, alpha: 1)
//      self.selectedBackgroundView = blueView
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.contentView.layer.borderColor = #colorLiteral(red: 0.9019607843, green: 0.9019607843, blue: 0.9019607843, alpha: 1)
        self.contentView.layer.borderWidth = 0.3
        self.contentView.layer.cornerRadius = 20
        self.contentView.layer.masksToBounds = true
    }
}
