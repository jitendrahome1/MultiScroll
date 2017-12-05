//
//  MultiScrollTableCell2.swift
//  ExampleMultiScroll
//
//  Created by Jitendra on 05/12/17.
//  Copyright © 2017 Jitendra. All rights reserved.
//

import UIKit

class MultiScrollTableCell2: UITableViewCell, UICollectionViewDelegate,UICollectionViewDataSource {

    @IBOutlet var aCollectionView: UICollectionView!
    
    var dataSource: AnyObject? {
        didSet {
            
            aCollectionView.reloadData()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
          self.aCollectionView.register(UINib(nibName:"CollectionViewCell1", bundle: nil), forCellWithReuseIdentifier:"CollectionViewCell1")
        
        
        self.aCollectionView.register(UINib(nibName:"CollectionViewCell2", bundle: nil), forCellWithReuseIdentifier:"CollectionViewCell2")
        
//        self.aCollectionView.register(CollectionViewCell1.self, forCellWithReuseIdentifier: "CollectionViewCell1")
//        self.aCollectionView.register(CollectionViewCell2.self, forCellWithReuseIdentifier: "CollectionViewCell2")
        // Initialization code
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    

}

// MARK:- Collection View Delegate
extension MultiScrollTableCell2  {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 2
        
        // return self.dataSource!.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell = UICollectionViewCell()
        if indexPath.row == 0 {
        cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: CollectionViewCell1.self), for: indexPath) as! CollectionViewCell1
        }
        else {
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: CollectionViewCell2.self), for: indexPath) as! CollectionViewCell2
        }
        return cell
        }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: self.aCollectionView.frame.width, height:self.aCollectionView.frame.height )
        
    }
    
    }


