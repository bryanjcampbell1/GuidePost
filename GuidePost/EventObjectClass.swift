//
//  EventObjectClass.swift
//  GuidePost
//
//  Created by Bryan Campbell on 1/13/17.
//  Copyright © 2017 Bryan Campbell. All rights reserved.
//

import Foundation
import UIKit
import MapKit

class EventObject {
    var EventName: String?
    var UserID: String?
    var EventID: String?
    //var EventRating: Double
    var EventRating = 0.0
    
    
    
    
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
    
    //newNames --------------------------//
    var StopName1 = ""
    var StopDescription1 = ""
    var StopAddress1: String?
    var Location1: CLLocation?
    
    var StopName2 = ""
    var StopDescription2 = ""
    var StopAddress2: String?
    var Location2: CLLocation?
    
    var StopName3 = ""
    var StopDescription3 = ""
    var StopAddress3: String?
    var Location3: CLLocation?
    
    var StopName4 = ""
    var StopDescription4 = ""
    var StopAddress4: String?
    var Location4: CLLocation?
    
    var StopName5 = ""
    var StopDescription5 = ""
    var StopAddress5: String?
    var Location5: CLLocation?
    
    var StopName6 = ""
    var StopDescription6 = ""
    var StopAddress6: String?
    var Location6: CLLocation?
    
    var StopName7 = ""
    var StopDescription7 = ""
    var StopAddress7: String?
    var Location7: CLLocation?
    
    var StopName8 = ""
    var StopDescription8 = ""
    var StopAddress8: String?
    var Location8: CLLocation?
    
    var StopName9 = ""
    var StopDescription9 = ""
    var StopAddress9: String?
    var Location9: CLLocation?
    
    
    var StopName10 = ""
    var StopDescription10 = ""
    var StopAddress10: String?
    var Location10: CLLocation?
    
    
    //----------------------------------//
    var FirstLocation: CLLocation?
    var SecondLocation: CLLocation?
    var ThirdLocation: CLLocation?
    var FourthLocation: CLLocation?
    var FifthLocation: CLLocation?
    var SixthLocation: CLLocation?
    var SeventhLocation: CLLocation?
    var EighthLocation: CLLocation?
    var NinethLocation: CLLocation?
    var TenthLocation: CLLocation?
    
    var defaultLocation = CLLocationCoordinate2D(latitude: 21.282778, longitude: -157.829444)
    
    
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

