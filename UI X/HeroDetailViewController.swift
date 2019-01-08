//
//  HeroDetailViewController.swift
//  UI X
//
//  Created by user on 1/7/19.
//  Copyright © 2019 Alphonso Sensley II. All rights reserved.
//

import Foundation
import UIKit


class HeroDetailViewController: UIViewController, HeroInfoDelegate {
        func assignInfo(_ image: UIImage?, _ bio: String?, _ name: String?) {
            heroImageView.image = image
            heroBio.text = bio
        }
        
   
    @IBOutlet weak var heroImageView: UIImageView!
    
    @IBOutlet weak var heroBio: UITextView!
    
   
    
    override func viewWillAppear(_ animated: Bool) {
       
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ViewController().myDelegate = self
     
    }
    
}

