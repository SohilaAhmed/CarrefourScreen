//
//  ViewController.swift
//  task1-design
//
//  Created by Sohila on 14/05/2023.
//

import UIKit


private let reuseIdentifier1 = "item1"
private let reuseIdentifier2 = "item2"
private let reuseIdentifier3 = "item3"

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView1: UICollectionView!
    
    @IBOutlet weak var collectionView2: UICollectionView!
    
    @IBOutlet weak var collectionView3: UICollectionView!
    
    @IBOutlet weak var searchTF: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
        searchTF.leftViewMode = UITextField.ViewMode.always
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        let image = UIImage(systemName: "magnifyingglass")
        imageView.image = image
        searchTF.leftView = imageView
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        
    }
    
    
    @IBAction func searchAction(_ sender: UITextField) {
        
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        if(collectionView == collectionView2){
            return 1
        }
        if(collectionView == collectionView3){
            return 1
        }
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if(collectionView == collectionView2){
            return 7
        }
        if(collectionView == collectionView3){
            return 7
        }
        return 7
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //collectionView2
        if(collectionView == collectionView2){
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier2, for: indexPath) as! CollectionViewCell2
            cell.label.text = "Fish"
            
            
            
            
            return cell
        }
        
        //collectionView3
        if(collectionView == collectionView3){
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier3, for: indexPath) as! CollectionViewCell3
            cell.label.text = "20.00 BHD"
            
            
            
            return cell
        }
        
        //        collectionView1
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier1, for: indexPath) as! CollectionViewCell1
        
        
        cell.img.image = UIImage(named: "Food")
        cell.label.text = "Food"
        
        cell.contentView.layer.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        cell.contentView.layer.borderColor = #colorLiteral(red: 0.9019607843, green: 0.9019607843, blue: 0.9019607843, alpha: 1)
        cell.contentView.layer.borderWidth = 0.5
        cell.contentView.layer.cornerRadius = 20
        cell.contentView.layer.masksToBounds = true
        
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
            // 1
        case UICollectionView.elementKindSectionHeader:
            // 2
            let headerView = collectionView.dequeueReusableSupplementaryView(
                ofKind: kind,
                withReuseIdentifier: "headerViewItem",
                for: indexPath)
            
            // 3
            guard let typedHeaderView = headerView as? HeaderView
            else { return headerView }
            
            // 4
             
            typedHeaderView.titleHeader.text = "items"
            return typedHeaderView
        default:
            // 5
            assert(false, "Invalid element type")
        }
    }
    

}

extension ViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if(collectionView == collectionView2){
            return CGSize(width: 90, height: 40)
        }
        if(collectionView == collectionView3){
            return CGSize(width: 175, height: 240)
        }
        return CGSize(width: 150, height: 133)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0.4
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 1, left: 15, bottom: 15, right: 15)
    }
    
    
}


extension ViewController: UIScrollViewDelegate{
    //    func scrollViewDidScroll(_ scrollView: UIScrollView) {
    //        //        if scrollView == collectionView3{
    //        //            collectionView1.isHidden = true
    //        ////            collectionView3Constrain.constant = 0
    //        //        }
    //        if(scrollView.panGestureRecognizer.translation(in: scrollView.superview).y > 0)
    //        {
    //            print("scrolled up")
    //            collectionView1.isHidden = false
    //        }
    //        else
    //        {
    //            print("scrolled down")
    //            collectionView1.isHidden = true
    //        }
    //    }
}
