//
//  ItemPopupViewController.swift
//  task1-design
//
//  Created by Sohila on 16/05/2023.
//

import UIKit

class ItemPopupViewController: UIViewController {
    @IBOutlet weak var innerView: UIView!
    @IBOutlet weak var itemsCollectionView: UICollectionView!
    
    @IBOutlet weak var newLabel: UILabel!
    
    var currentCellIndex = 0
    var numberOfItem = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newLabel.text = " \(currentCellIndex + 1) / 7"
        
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
    
    @IBAction func nextItem(_ sender: Any) {
        moveToNextItem()
    }
    func moveToNextItem(){
        if currentCellIndex < 6{
            currentCellIndex += 1
        }else{
            currentCellIndex = 0
        }
        itemsCollectionView.scrollToItem(at: IndexPath(row: currentCellIndex, section: 0), at: .centeredHorizontally, animated: true)
        print(currentCellIndex)
        newLabel.text = "\(currentCellIndex + 1) / 7"
        
    }
    
    @IBAction func previousItem(_ sender: Any) {
        moveToPreviousItem()
    }
     
    
    
    func moveToPreviousItem(){
        if currentCellIndex > 0{
            currentCellIndex -= 1
        }else{
            currentCellIndex = 6
        }
        itemsCollectionView.scrollToItem(at: IndexPath(item: currentCellIndex, section: 0), at: .centeredHorizontally, animated: true)
        newLabel.text = " \(currentCellIndex + 1) / 7"
    }
}
