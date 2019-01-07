//
//  ViewController.swift
//  UI X
//
//  Created by user on 1/6/19.
//  Copyright © 2019 Alphonso Sensley II. All rights reserved.
//

import UIKit
var MarvelImages = [UIImage]()
var MarvelHeroes = ["Spiderman", "Captain America", "Ironman", "Hulk"]
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MarvelImages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->    UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyCell
        cell.heroImage.image = MarvelImages[indexPath.row]
        cell.heroLabel.text = MarvelHeroes[indexPath.row]
        return cell
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        MarvelImages.append(UIImage(named: "Spiderman")!)
        MarvelImages.append(UIImage(named:"CaptainAmerica")!)
        MarvelImages.append(UIImage(named:"Ironman")!)
        MarvelImages.append(UIImage(named: "Hulk")!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
}

