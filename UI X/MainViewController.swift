//
//  MainViewController.swift
//  UI X
//
//  Created by user on 1/6/19.
//  Copyright © 2019 Alphonso Sensley II. All rights reserved.
//

import UIKit
import Foundation


class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return HeroesArray.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->    UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyCell
        cell.heroImage.image = HeroesArray[indexPath.row].picture
        cell.heroLabel.text = HeroesArray[indexPath.row].name
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailController = navigationController!.storyboard?.instantiateViewController(withIdentifier: "HeroDetailViewController") as! HeroDetailViewController
        
        detailController.detailImage = HeroesArray[indexPath.row].picture
        detailController.bio = "\(HeroesArray[indexPath.row].bio)"
        detailController.title = "\(HeroesArray[indexPath.row].name)"
        
        show(detailController, sender: self)
        
    }
    
    func populateHeroesArray() {
        HeroesArray.removeAll()
        HeroesArray.append(Spiderman)
        HeroesArray.append(CaptAmerica)
        HeroesArray.append(Falcon)
        HeroesArray.append(BlackPanther)
        HeroesArray.append(Ironman)
        HeroesArray.append(Thor)
        HeroesArray.append(HawkEye)
        HeroesArray.append(Hulk)
       
        
    }
    //ADDS UIImage TO MIDDLE OF NAVIGATION BAR
    func addNavBarImage() {
        let navController = navigationController!
        let image = UIImage(named: "Marvel Logo")!
        let imageView = UIImageView(image: image)
        let bannerWidth = navController.navigationBar.frame.size.width
        let bannerHeight = navController.navigationBar.frame.size.height
        let bannerX = bannerWidth - image.size.width
        let bannerY = bannerHeight - image.size.height
        imageView.frame = CGRect(x: bannerX, y: bannerY, width: bannerWidth, height: bannerHeight)
        imageView.contentMode = .scaleAspectFit
        navigationItem.titleView = imageView
    }
    
    override func viewWillAppear(_ animated: Bool) {
        populateHeroesArray()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addNavBarImage()
        backgroundImageView.image = UIImage(named: "Avengers")
    }
    
}



