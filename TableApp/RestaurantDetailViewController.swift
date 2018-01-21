//
//  RestaurantDetailViewController.swift
//  FoodPin
//
//  Created by Kamil Szalek on 10/04/2017.
//  Copyright © 2017 Kamil Szalek. All rights reserved.
//

import UIKit

class RestaurantDetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var restaurantImageView: UIImageView!
    @IBOutlet var tableView: UITableView!
    @IBOutlet weak var addButton: UIButton!
    
    @IBAction func addToLibrary(_ sender: UIButton) {
        library.append(self.book)
    }
    
    var book: Book!
    var restaurantImage =  ""

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) ->
        Int {
            return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
        UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! RestaurantDetailTableViewCell
            
            //Configure the cell
            switch indexPath.row {
            case 0:
                cell.fieldLabel.text = "Title"
                cell.valueLabel.text = self.book.title
            case 1:
                cell.fieldLabel.text = "Type"
                cell.valueLabel.text = self.book.author
            case 2:
                cell.fieldLabel.text = "Language"
                cell.valueLabel.text = self.book.language
            case 3:
                cell.fieldLabel.text = "Country"
                cell.valueLabel.text = self.book.country
            default:
                cell.fieldLabel.text = ""
                cell.fieldLabel.text = ""
            }
            return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // title = restaurant.name
        
        // Auto Cells
        tableView.estimatedRowHeight = 36.0
        tableView.rowHeight = UITableViewAutomaticDimension
        
        // Signing photo
        restaurantImageView.image = UIImage(named: self.book.imageLink)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.hidesBarsOnSwipe = false
        navigationController?.setNavigationBarHidden(false, animated: true)
    }

}
