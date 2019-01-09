//
//  ViewController.swift
//  UI X
//
//  Created by user on 1/6/19.
//  Copyright © 2019 Alphonso Sensley II. All rights reserved.
//

import UIKit
import Foundation


class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var HeroesArray = [Hero]()
    @IBOutlet weak var tableView: UITableView!
    
    let Thor = Hero(name: "Thor", picture:UIImage(named: "Thor")!, bio: "As the son of Odin and Gaea, Thor's strength, endurance and resistance to injury are greater than the vast majority of his superhuman race. He is extremely long-lived (though not completely immune to aging), immune to conventional disease and highly resistant to injury. His flesh and bones are several times denser than a human's.As Lord of Asgard, Thor possessed the Odinforce, which enabled him to tap into the near-infinite resources of cosmic and mystical energies, enhancing all of his abilities. With the vast magical power of the Odinforce, Thor was even able to dent Captain America’s virtually indestructible shield with Mjolnir.")
    
    let Spiderman = Hero(name: "Spider-Man", picture: UIImage(named: "Spiderman")!, bio: "Bitten by a radioactive spider, high school student Peter Parker gained the speed, strength and powers of a spider. Adopting the name Spider-Man, Peter hoped to start a career using his new abilities. Taught that with great power comes great responsibility, Spidey has vowed to use his powers to help people.")
    
    let Ironman = Hero(name: "Iron Man", picture: UIImage(named: "Ironman")!, bio: "Wounded, captured and forced to build a weapon by his enemies, billionaire industrialist Tony Stark instead created an advanced suit of armor to save his life and escape captivity. Now with a new outlook on life, Tony uses his money and intelligence to make the world a safer, better place as Iron Man.")
    
    let BlackPanther = Hero(name: "Black Panther", picture: UIImage(named: "BlackPanther")!, bio: "Black Panther (T'Challa) is a brilliant tactician, strategist, scientist, tracker and a master of all forms of unarmed combat whose unique hybrid fighting style incorporates acrobatics and aspects of animal mimicry. T'Challa being a royal descendent of a warrior race is also a master of armed combat, able to use a variety of weapons but prefers unarmed combat. He is a master planner who always thinks several steps ahead and will go to extreme measures to achieve his goals and protect the kingdom of Wakanda.")
    
    let CaptAmerica = Hero(name: "Captain America", picture: UIImage(named:"CaptainAmerica")!, bio: "Vowing to serve his country any way he could, young Steve Rogers took the super soldier serum to become America's one-man army. Fighting for the red, white and blue for over 60 years, Captain America is the living, breathing symbol of freedom and liberty.")
    
    let Hulk = Hero(name: "Hulk", picture: UIImage(named: "Hulk")!, bio: "Caught in a gamma bomb explosion while trying to save the life of a teenager, Dr. Bruce Banner was transformed into the incredibly powerful creature called the Hulk. An all too often misunderstood hero, the angrier the Hulk gets, the stronger the Hulk gets. ")
    
    
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
        let detailController = storyboard?.instantiateViewController(withIdentifier: "HeroDetailViewController") as! HeroDetailViewController
        
        detailController.detailImage = HeroesArray[indexPath.row].picture
        detailController.bio = "\(HeroesArray[indexPath.row].bio)"
        detailController.title = "\(HeroesArray[indexPath.row].name)"
        navigationController!.present(detailController, animated: true, completion: nil)
    }
    
    func populateHeroesArray() {
        HeroesArray.removeAll()
        HeroesArray.append(Spiderman)
        HeroesArray.append(CaptAmerica)
        HeroesArray.append(BlackPanther)
        HeroesArray.append(Ironman)
        HeroesArray.append(Thor)
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
        
    }
    
}



