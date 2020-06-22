//
//  SentMemeCollectionViewController.swift
//  Meme Me 2.0
//
//  Created by Brian Andreasen on 4/22/20.
//  Copyright © 2020 Brian Andreasen. All rights reserved.
//

import Foundation
import UIKit

class SentMemesCollectionViewController: UICollectionViewController {
    @IBOutlet weak var flowLayout: UICollectionViewFlowLayout!
            
    var memes: [Meme]! {
        let object = UIApplication.shared.delegate
        let appDelegate = object as! AppDelegate
        return appDelegate.memes
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let space: CGFloat = 3.0
//        let dimension = (view.frame.size.width  - (2 * space ) / 3.0)
        let dimension = (view.frame.size.width  - (2 * space )) / 3.0

        
        // print(dimension) 373
        print(dimension)
        
        //MARK -- Implement flow layout
        flowLayout.minimumLineSpacing = space
        flowLayout.minimumInteritemSpacing = space
        flowLayout.itemSize = CGSize(width: dimension, height: dimension)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.collectionView.reloadData()
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print(self.memes.count)
        return self.memes.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cellIdentifier = "MemeCollectionViewCell"
//        let meme = memes[indexPath.row]
//
//
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as! MemeCollectionViewCell
//
//        cell.memeImageView?.image = meme.memedImage
//
//        return cell
        
        // MARK -- improve this code
        
        let meme = memes[indexPath.row]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MemeCollectionViewCell", for: indexPath) as? MemeCollectionViewCell
        
        cell?.memeImageView.image = meme.memedImage
        
        return cell!
    }
}
