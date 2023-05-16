//
//  ItemPopUp.swift
//  task1-design
//
//  Created by Sohila on 16/05/2023.
//

import UIKit

class ItemPopUp: UIView {

    @IBOutlet weak var exitBtn: UIButton!
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        xibSteup(frame: CGRect(x: 0, y: 0, width: frame.width, height: frame.height))
        
    }
    
    func xibSteup(frame: CGRect){
        let view = loadPopUp()
        view.frame = frame
        addSubview(view)
    }
    
    func loadPopUp() -> UIView{
        let bundel = Bundle(for: type(of: self))
        let nib = UINib(nibName: "ItemPopUp", bundle: bundel)
        let view = nib.instantiate(withOwner: self, options: nil).first as? UIView
        
        return view!
    }
}
