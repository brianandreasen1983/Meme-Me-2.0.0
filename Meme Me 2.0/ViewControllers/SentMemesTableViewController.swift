//
//  SentMemeTableViewController.swift
//  Meme Me 2.0
//
//  Created by Brian Andreasen on 4/22/20.
//  Copyright © 2020 Brian Andreasen. All rights reserved.
//

import Foundation
import UIKit

class SentMemesTableViewController: UITableViewController {
    
    var memes: [Meme]! {
        let object = UIApplication.shared.delegate
        let appDelegate = object as! AppDelegate
        return appDelegate.memes
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.memes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "MemeCell"
        let meme = memes[indexPath.row]
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? MemeCell else {
            fatalError("It's broken")
        }
        
        
        cell.memeImageView.image = meme.memedImage
        cell.memeLabel.text = meme.topText + "" + meme.bottomText
                
        return cell
    }
}
