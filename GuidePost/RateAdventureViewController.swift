//
//  RateAdventureViewController.swift
//  GuidePost
//
//  Created by Bryan Campbell on 9/12/16.
//  Copyright (c) 2016 Bryan Campbell. All rights reserved.
//

import Foundation
import Foundation
import UIKit

class RateAdventureViewController: UIViewController {
    
    @IBOutlet weak var headerImage: UIImageView!
    
    
    @IBOutlet weak var oneStar: UIButton!
    @IBOutlet weak var twoStars: UIButton!
    @IBOutlet weak var threeStars: UIButton!
    @IBOutlet weak var fourStars: UIButton!
    @IBOutlet weak var fiveStars: UIButton!
    
    @IBOutlet weak var homeButton: UIButton!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var profileButton: UIButton!
    @IBOutlet weak var createButton: UIButton!
    
    var passedEvent = EventObject()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
