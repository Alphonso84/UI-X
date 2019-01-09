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
    
    @IBOutlet weak var heroImageView: UIImageView!
    
    @IBOutlet weak var heroBio: UITextView!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //MARK: step 5 create a reference of Class B and bind them through the prepareforsegue method
        if let nav = segue.destination as? UINavigationController, let A = nav.topViewController as? MainViewController {
            A.myDelegate = self
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
//        let vc = MainViewController()
//        vc.myDelegate = self
    }
    

    func assignInfo(_ image: UIImage?, _ bio: String?, _ name: String?) {
        heroImageView.image = image
        heroBio.text = bio
    }
    
}

