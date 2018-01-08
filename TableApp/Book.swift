//
//  Restaurant.swift
//  TableApp
//
//  Created by Kamil Szalek on 09/04/2017.
//  Copyright © 2017 Kamil Szalek. All rights reserved.
//

import Foundation

class Book {
    var pages = 0
    var link = ""
    var imageLink = ""
    var language = ""
    var title = ""
    var year = 0
    var author = ""
    var country = ""
    
    init (
        pages: Int,
        link: String,
        imageLink: String,
        language: String,
        title: String,
        year: Int,
        author: String,
        country: String
        ) {
        
        self.pages = pages
        self.link = link
        self.imageLink = imageLink
        self.language = language
        self.title = title
        self.year = year
        self.author = author
        self.country = country
    }
}
