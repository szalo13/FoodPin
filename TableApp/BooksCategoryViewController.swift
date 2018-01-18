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
    var englishBooks = [] as Array<Book>
    var germanBooks = [] as Array<Book>
    var unitedStatesBooks = [] as Array<Book>
    
    var otherBooks = [] as Array<Book>
    
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
            
            switch(book.country) {
            case "England":
                self.englishBooks.append(book)
            case "Germany":
                self.germanBooks.append(book)
            case "United States":
                self.unitedStatesBooks.append(book)
            default:
                self.otherBooks.append(book)
            }
        }
        print(self.germanBooks)
        print(self.unitedStatesBooks)
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        var destinationBooks = [] as Array<Book>
        switch(segue.identifier as! String) {
        case "showEnglishBooks":
            destinationBooks = self.englishBooks;
        case "showGermanBooks":
            destinationBooks = self.germanBooks;
        case "showUnitedStatesBooks":
            destinationBooks = self.unitedStatesBooks;
        case "showOtherBooks":
            destinationBooks = self.otherBooks;
        default:
            destinationBooks = self.otherBooks;
        }
        
        let destinationController = segue.destination as! RestaurantTableViewController
        destinationController.books = destinationBooks
    }
    
}

