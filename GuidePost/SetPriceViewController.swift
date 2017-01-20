//
//  SetPriceViewController.swift
//  GuidePost
//
//  Created by Bryan Campbell on 9/12/16.
//  Copyright (c) 2016 Bryan Campbell. All rights reserved.
//

import Foundation
import UIKit

class SetPriceViewController: UIViewController {
    
    @IBOutlet weak var headerImage: UIImageView!

    @IBOutlet weak var segmentedControl: UISegmentedControl!
   
    @IBOutlet weak var otherDollarTextField: UITextField!
    @IBOutlet weak var doneButton: UIButton!
    
    @IBOutlet weak var homeButton: UIButton!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var profileButton: UIButton!
    @IBOutlet weak var createButton: UIButton!
    
    var newEvent = EventObject()
    var eventPrice : Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func indexChanged(_ sender: AnyObject) {
        switch segmentedControl.selectedSegmentIndex
        {
        case 0:
            eventPrice = 0;
        case 1:
            eventPrice = 1;
        case 2:
            eventPrice = 5;
        case 3:
            eventPrice = 10;
        default:
            break
        }
        
        
    }
    @IBAction func setPrice(_ sender: AnyObject) {
        //if contents of otherDollarTextField does not equal nil --> set price to this before saving
        
        if ((otherDollarTextField.text?.characters.count)! > 0) {
            print(" other price chosen")
            eventPrice = Int(otherDollarTextField.text!)!
            
        } else {
            //do nothing
        }
        
        newEvent.Price = eventPrice
        newEvent.saveEventObject()
        
    }
    
    
}
