//
//  ViewController.swift
//  task1-design
//
//  Created by Sohila on 14/05/2023.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var collectionView3: UICollectionView!
    @IBOutlet weak var searchTF: UITextField!
    
    var itemPopUp: ItemPopUp!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchTF.leftViewMode = UITextField.ViewMode.always
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        let image = UIImage(systemName: "magnifyingglass")
        imageView.image = image
        searchTF.leftView = imageView
        
//        searchTF.borderStyle = .none
//        searchTF.layer.borderWidth = 0
//        searchTF.layer.borderColor = UIColor.clear.cgColor
//        searchTF.clipsToBounds = false
//        searchTF.layer.shadowOpacity = 0.3
//        searchTF.layer.shadowOffset = CGSize(width: 0, height: 1)
//        searchTF.layer.shadowColor = UIColor.black.cgColor
//        searchTF.layer.shadowRadius = 3 
        
    }
    
    
    @IBAction func searchAction(_ sender: UITextField) {
        
    }
}
