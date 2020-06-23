//
//  MemeDetailViewController.swift
//  Meme Me 2.0
//
//  Created by Brian Andreasen on 4/21/20.
//  Copyright © 2020 Brian Andreasen. All rights reserved.
//

import UIKit

class MemeDetailViewController: UIViewController {
    var meme: Meme!
    
    // MARK -- Needs implementation in storyboard
    @IBOutlet weak var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()        
    }
    
    // MARK -- Implement shit here
    override func viewWillAppear(_ animated: Bool) {
        self.imageView.image = meme.memedImage
    }
}
