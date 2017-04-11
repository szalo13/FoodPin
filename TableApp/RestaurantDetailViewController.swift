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
    
    var restaurant: Restaurant!
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
                cell.fieldLabel.text = "Name"
                cell.valueLabel.text = restaurant.name
            case 1:
                cell.fieldLabel.text = "Type"
                cell.valueLabel.text = restaurant.type
            case 2:
                cell.fieldLabel.text = "Location"
                cell.valueLabel.text = restaurant.location
            case 3:
                cell.fieldLabel.text = "Type"
                cell.valueLabel.text = (restaurant.isVisited) ? "Yes" : "No"
            default:
                cell.fieldLabel.text = ""
                cell.fieldLabel.text = ""
            }
            return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = restaurant.name
        
        // Signing photo
        restaurantImageView.image = UIImage(named: self.restaurant.image)
        
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
