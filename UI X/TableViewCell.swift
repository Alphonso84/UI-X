//
//  TableViewCell.swift
//  UI X
//
//  Created by user on 1/6/19.
//  Copyright © 2019 Alphonso Sensley II. All rights reserved.
//

import Foundation
import UIKit
 
@objc protocol HeroInfoDelegate: class {
    func assignInfo(_ image: UIImage?, _ bio: String?, _ name: String?)
    
}

class MyCell: UITableViewCell {
    
   
    @IBOutlet weak var myDelegate: HeroInfoDelegate?
    @IBOutlet weak var heroImage: UIImageView!
    @IBOutlet weak var heroLabel: UILabel!
    
    @IBAction func Info(_ sender: Any) {

        myDelegate?.assignInfo(HeroesArray[0].picture, HeroesArray[0].bio, HeroesArray[0].name)
    print("hi")
    }
    
}
