//
//  SearchObject.swift
//  GuidePost
//
//  Created by Bryan Campbell on 1/14/17.
//  Copyright © 2017 Bryan Campbell. All rights reserved.
//

import Foundation

class SearchObject {
    var SearchText: String?
    var SearchLocation: String?
    var FilterType: String?
    
    func saveEventObject() {
        //upload the object to db
    }
    
    init(x: String, y: String, z:String) {
        self.SearchText = x
        self.SearchLocation = y
        self.FilterType = z
    }
    
}
