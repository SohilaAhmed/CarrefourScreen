//
//  ItemPopupViewController.swift
//  task1-design
//
//  Created by Sohila on 16/05/2023.
//

import UIKit

class ItemPopupViewController: UIViewController {
    @IBOutlet weak var innerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap(_:)))
        view.addGestureRecognizer(tapGesture) 
    }
    
    @objc func handleTap(_ sender: UITapGestureRecognizer) {
      let location = sender.location(in: innerView)
        
      if !innerView.bounds.contains(location) {
        dismiss(animated: true, completion: nil)
      }
    }
    
    @IBAction func exitBtn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
