//
//  EventObjectClass.swift
//  GuidePost
//
//  Created by Bryan Campbell on 1/13/17.
//  Copyright © 2017 Bryan Campbell. All rights reserved.
//

import Foundation
import UIKit

class EventObject {
    var EventName: String?
    var UserID: String?
    
    var Tags: String?
    var MainDescription: String?
    var MainPicture: UIImage?
    
    var FirstAddress: String?
    var SecondAddress: String?
    var ThirdAddress: String?
    var FourthAddress: String?
    var FifthAddress: String?
    var SixthAddress: String?
    var SeventhAddress: String?
    var EighthAddress: String?
    var NinethAddress: String?
    var TenthAddress: String?
    
    var FirstName: String?
    var SecondName: String?
    var ThirdName: String?
    var FourthName: String?
    var FifthName: String?
    var SixthName: String?
    var SeventhName: String?
    var EighthName: String?
    var NinethName: String?
    var TenthName: String?
    
    var FirstDescription: String?
    var SecondDescription: String?
    var ThirdDescription: String?
    var FourthDescription: String?
    var FifthDescription: String?
    var SixthDescription: String?
    var SeventhDescription: String?
    var EighthDescription: String?
    var NinethDescription: String?
    var TenthDescription: String?
    
    var FirstPic: UIImage?
    var SecondPic: UIImage?
    var ThirdPic: UIImage?
    var FourthPic: UIImage?
    var FifthPic: UIImage?
    var SixthPic: UIImage?
    var SeventhPic: UIImage?
    var EighthPic: UIImage?
    var NinethPic: UIImage?
    var TenthPic: UIImage?
    
    var cellImages: [UIImage] = []
    
    var NumberOfStops = 1
    
    var Price: Int?
    var Publish = 0
    
    func saveEventObject() {
        //upload the object to db
    }
    
    init() {
        //1 set UserID to currentUser
        
    }
    
}

