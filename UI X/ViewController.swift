//
//  ViewController.swift
//  UI X
//
//  Created by user on 1/6/19.
//  Copyright © 2019 Alphonso Sensley II. All rights reserved.
//

import UIKit



protocol ViewControllerDelegate: class{
    func assignImage(_ image: UIImage?)
    func assignBio(_ bio: String?)
    func assignName(_ name: String?)
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    weak var delegate: ViewControllerDelegate?
    var HeroesArray = [Hero]()
    @IBOutlet weak var tableView: UITableView!
    
    let Spiderman = Hero(name: "Spider-Man", picture: UIImage(named: "Spiderman")!, bio: "Bitten by a radioactive spider, high school student Peter Parker gained the speed, strength and powers of a spider. Adopting the name Spider-Man, Peter hoped to start a career using his new abilities. Taught that with great power comes great responsibility, Spidey has vowed to use his powers to help people.")
    
    let Ironman = Hero(name: "Iron Man", picture: UIImage(named: "Ironman")!, bio: "Wounded, captured and forced to build a weapon by his enemies, billionaire industrialist Tony Stark instead created an advanced suit of armor to save his life and escape captivity. Now with a new outlook on life, Tony uses his money and intelligence to make the world a safer, better place as Iron Man.")
    
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
      
        delegate?.assignBio(HeroesArray[0].bio)
        delegate?.assignName(HeroesArray[0].name)
        delegate?.assignImage(HeroesArray[0].picture)
    
    }
    
    
    
    func populateHeroesArray() {
   
        HeroesArray.append(Spiderman)
        HeroesArray.append(CaptAmerica)
        HeroesArray.append(Ironman)
        HeroesArray.append(Hulk)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        populateHeroesArray()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        
    }
    
    
}

