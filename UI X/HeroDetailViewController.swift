//
//  HeroDetailViewController.swift
//  UI X
//
//  Created by user on 1/7/19.
//  Copyright © 2019 Alphonso Sensley II. All rights reserved.
//

import Foundation
import UIKit


class HeroDetailViewController: UIViewController, ViewControllerDelegate {
    
    
    
    @IBOutlet weak var heroImageView: UIImageView!
    
    @IBOutlet weak var heroBio: UITextView!
    
   
    
    func assignImage(_ image: UIImage?) {
       self.heroImageView.image = image
        
    }
    func assignBio(_ bio: String?) {
       heroBio.text = bio
    }
    
    func assignName(_ name: String?) {
        navigationController?.title = name
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
       
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
    
    
    
    
}
