//
//  RestaurantDetailViewController.swift
//  FoodPin
//
//  Created by Kamil Szalek on 10/04/2017.
//  Copyright © 2017 Kamil Szalek. All rights reserved.
//

import UIKit

class RestaurantDetailViewController: UIViewController {

    @IBOutlet var restaurantImageView: UIImageView!
    @IBOutlet var restaurantNameLabel: UILabel!
    @IBOutlet var restaurantTypeLabel: UILabel!
    @IBOutlet var restaurantLocationLabel: UILabel!
    @IBOutlet var restaurantIsVisitedLabel: UILabel!
    
    var restaurantImage = ""
    var restaurantName = ""
    var restaurantType = ""
    var restaurantLocation = ""
    var restaurantIsVisited = false

    override func viewDidLoad() {
        super.viewDidLoad()

        self.restaurantImageView.image = UIImage(named: restaurantImage)
        self.restaurantNameLabel.text = self.restaurantName
        self.restaurantTypeLabel.text = self.restaurantType
        self.restaurantLocationLabel.text = self.restaurantLocation
        self.restaurantIsVisitedLabel.text = self.restaurantIsVisited ? "Yes" : "No"
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
