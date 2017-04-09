//
//  ViewController.swift
//  TableApp
//
//  Created by Kamil Szalek on 09/04/2017.
//  Copyright © 2017 Kamil Szalek. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var restaurants:[Restaurant] = [
        Restaurant(name: "Cafe Deadend", type: "Coffee & Tea Shop", location: "Hong Kong", image: "cafedeadend.jpg", isVisited: false),
            Restaurant(name: "Homei", type: "Cafe", location: "Hong Kong", image:
                "homei.jpg", isVisited: false),
            Restaurant(name: "Teakha", type: "Tea House", location: "Hong Kong", image:
                "teakha.jpg", isVisited: false),
            Restaurant(name: "Cafe loisl", type: "Austrian / Causual Drink", location:
                "Hong Kong", image: "cafeloisl.jpg", isVisited: false),
            Restaurant(name: "Petite Oyster", type: "French", location: "Hong Kong",
                       image: "petiteoyster.jpg", isVisited: false),
            Restaurant(name: "For Kee Restaurant", type: "Bakery", location: "Hong Kong", image: "forkeerestaurant.jpg", isVisited: false),
                Restaurant(name: "Po's Atelier", type: "Bakery", location: "Hong Kong",
                           image: "posatelier.jpg", isVisited: false),
                Restaurant(name: "Bourke Street Backery", type: "Chocolate", location:
                    "Sydney", image: "bourkestreetbakery.jpg", isVisited: false),
                Restaurant(name: "Haigh's Chocolate", type: "Cafe", location: "Sydney",
                           image: "haighschocolate.jpg", isVisited: false),
                Restaurant(name: "Palomino Espresso", type: "American / Seafood", location:
                    "Sydney", image: "palominoespresso.jpg", isVisited: false),
                Restaurant(name: "Upstate", type: "American", location: "New York", image:
                    "upstate.jpg", isVisited: false),
                Restaurant(name: "Traif", type: "American", location: "New York", image:
                    "traif.jpg", isVisited: false),
                Restaurant(name: "Graham Avenue Meats", type: "Breakfast & Brunch",
                           location: "New York", image: "grahamavenuemeats.jpg", isVisited: false),
                Restaurant(name: "Waffle & Wolf", type: "Coffee & Tea", location: "New York", image: "wafflewolf.jpg", isVisited: false),
                    Restaurant(name: "Five Leaves", type: "Coffee & Tea", location: "New York",
                               image: "fiveleaves.jpg", isVisited: false),
                    Restaurant(name: "Cafe Lore", type: "Latin American", location: "New York",
                               image: "cafelore.jpg", isVisited: false),
                    Restaurant(name: "Confessional", type: "Spanish", location: "New York",
                               image: "confessional.jpg", isVisited: false),
                    Restaurant(name: "Barrafina", type: "Spanish", location: "London", image:
                        "barrafina.jpg", isVisited: false),
                    Restaurant(name: "Donostia", type: "Spanish", location: "London", image: "donostia.jpg", isVisited: false),
                    Restaurant(name: "Royal Oak", type: "British", location: "London", image:
                        "royaloak.jpg", isVisited: false),
                    Restaurant(name: "CASK Pub and Kitchen", type: "Thai", location: "London",
                               image: "caskpubkitchen.jpg", isVisited: false)
    ]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int ) ->
    Int {
        //Return numbers of rows in the section
        return restaurants.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
    UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        
        //configure the cell
        cell.textLabel?.text = restaurants[indexPath.row].name
        cell.imageView?.image = UIImage(named: restaurants[indexPath.row].image)
            
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

