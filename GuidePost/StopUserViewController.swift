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
    var stopCounter = 0
    
    
    @IBAction func mapButtonPressed(_ sender: AnyObject) {
        
        performSegue(withIdentifier: "StopToMap", sender: nil)
    }
    
    @IBAction func nextStopPressed(_ sender: AnyObject) {
        
        if stopCounter < passedEvent.NumberOfStops {
            performSegue(withIdentifier: "NextStop", sender: nil)
        }
        else{
            performSegue(withIdentifier: "StopToEnd", sender: nil)
        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        stopCounter = stopCounter + 1
        print(stopCounter)
        
        if stopCounter == passedEvent.NumberOfStops {
            nextStopButton.setTitle("End Adventure",for: .normal)
        }
        
        //set all display text here based on stop number
        if stopCounter == 1 {
            stopName.text = passedEvent.StopName1
            stopInstructions.text = passedEvent.StopDescription1
            print("inside1")
        }
        else if stopCounter == 2 {
            stopName.text = passedEvent.StopName2
            stopInstructions.text = passedEvent.StopDescription2
            print("inside2")
        }
        else if stopCounter == 3 {
            stopName.text = passedEvent.StopName3
            stopInstructions.text = passedEvent.StopDescription3
            print("inside3")
        }
        else if stopCounter == 4 {
            stopName.text = passedEvent.StopName4
            stopInstructions.text = passedEvent.StopDescription4
        }
        else if stopCounter == 5 {
            stopName.text = passedEvent.StopName5
            stopInstructions.text = passedEvent.StopDescription5
        }
        else if stopCounter == 6 {
            stopName.text = passedEvent.StopName6
            stopInstructions.text = passedEvent.StopDescription6
        }
        else if stopCounter == 7 {
            stopName.text = passedEvent.StopName7
            stopInstructions.text = passedEvent.StopDescription7
        }
        else if stopCounter == 8 {
            stopName.text = passedEvent.StopName8
            stopInstructions.text = passedEvent.StopDescription8
        }
        else if stopCounter == 9 {
            stopName.text = passedEvent.StopName9
            stopInstructions.text = passedEvent.StopDescription1
        }
        else if stopCounter == 10 {
            stopName.text = passedEvent.StopName9
            stopInstructions.text = passedEvent.StopDescription1
        }
        else{
            print("error with stopCounter")
        }

        
        
        
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
            vc.stopCounter = stopCounter
        }
        else if segue.identifier == "StopToEnd"{
            let vc = segue.destination as! RateAdventureViewController
            vc.passedEvent = passedEvent
            
        }
    }
    
    
}
