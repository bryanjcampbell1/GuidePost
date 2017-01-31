//
//  StopUser.swift
//  GuidePost
//
//  Created by Bryan Campbell on 9/12/16.
//  Copyright (c) 2016 Bryan Campbell. All rights reserved.
//

import Foundation
import UIKit

class StopUserViewController: UIViewController {
    
    @IBOutlet weak var headerImage: UIImageView!
    @IBOutlet weak var stopName: UILabel!
    @IBOutlet weak var mapButton: UIButton!
    @IBOutlet weak var stopInstructions: UITextView!
    
    @IBOutlet weak var nextStopButton: UIButton!
    
    @IBOutlet weak var homeButton: UIButton!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var profileButton: UIButton!
    @IBOutlet weak var createButton: UIButton!
    
    var passedEvent = EventObject()
    
    
    @IBAction func mapButtonPressed(_ sender: AnyObject) {
        
        performSegue(withIdentifier: "StopToMap", sender: nil)
    }
    
    @IBAction func nextStopPressed(_ sender: AnyObject) {
        
        performSegue(withIdentifier: "NextStop", sender: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //NextStop
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "StopToMap"{
            let vc = segue.destination as! MapPageViewController
            vc.passedEvent = passedEvent
        }
        else if segue.identifier == "NextStop"{
            let vc = segue.destination as! StopUserViewController
            vc.passedEvent = passedEvent
        }
    }
    
    
}
