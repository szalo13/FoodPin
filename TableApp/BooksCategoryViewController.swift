//
//  BooksCategoryViewController.swift
//  FoodPin
//
//  Created by Kamil Szalek on 08/01/2018.
//  Copyright © 2018 Kamil Szalek. All rights reserved.
//

import UIKit
import SwiftyJSON

class BooksCategoryViewController: UIViewController {
    
    var books = [] as Array
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Getting and parsing books from JSON
        let path = Bundle.main.path(forResource: "Books", ofType: "json")!
        let jsonString = try? String(contentsOfFile: path, encoding: String.Encoding.utf8)
        let results = JSON(parseJSON: jsonString!)
        
        for case let result in results.arrayValue {
            let book = Book(
                pages: result["pages"].int!,
                link: result["link"].string!,
                imageLink: result["imageLink"].string!,
                language: result["language"].string!,
                title: result["title"].string!,
                year: result["year"].int!,
                author: result["author"].string!,
                country: result["country"].string!
            )
            self.books.append(book);
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "showRomanticBooks" {
            let destinationController = segue.destination as! RestaurantTableViewController
            destinationController.books = self.books
        }
    }

}
