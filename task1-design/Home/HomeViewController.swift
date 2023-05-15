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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchTF.leftViewMode = UITextField.ViewMode.always
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        let image = UIImage(systemName: "magnifyingglass")
        imageView.image = image
        searchTF.leftView = imageView
    }
    
    
    @IBAction func searchAction(_ sender: UITextField) {
        
    }
}
