//
//  HeroDetailViewController.swift
//  UI X
//
//  Created by user on 1/7/19.
//  Copyright © 2019 Alphonso Sensley II. All rights reserved.
//

import Foundation
import UIKit


class HeroDetailViewController: UIViewController, UIScrollViewDelegate, UIScrollViewAccessibilityDelegate, UITableViewDelegate {
   
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var heroImageView: UIImageView!
    @IBOutlet weak var heroBio: UITextView!
    @IBOutlet weak var tableView: UITableView!
    
    //Properties are used to pass data from MainViewController
    var heroImage = UIImage()
    var detailImage = UIImage()
    var bio = String()
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print("ScrollView scrolled bro")
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return HeroesArray.count
    }
    
    private func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "heroCell", for: indexPath)
        cell.detailTextLabel?.text = "Hello"
        return cell
    }
    override func viewWillAppear(_ animated: Bool) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        heroImageView.image = detailImage
        heroBio.text = bio
    }
    
    
    
    
}

