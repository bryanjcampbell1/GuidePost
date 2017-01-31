//
//  AdventureFrontPageUser.swift
//  GuidePost
//
//  Created by Bryan Campbell on 9/12/16.
//  Copyright (c) 2016 Bryan Campbell. All rights reserved.
//

import Foundation
import UIKit

class AdventureFrontPageUserViewController: UIViewController {
    
    @IBOutlet weak var headerImage: UIImageView!
    @IBOutlet weak var starsImage: UIImageView!
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var adventurePrice: UILabel!
    @IBOutlet weak var adventureName: UILabel!
    @IBOutlet weak var guideName: UILabel!
    @IBOutlet weak var adventureDescription: UITextView!
    
    @IBOutlet weak var homeButton: UIButton!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var profileButton: UIButton!
    @IBOutlet weak var createButton: UIButton!
    
    @IBOutlet weak var startAdventureButton: UIButton!
    
    var passedEvent = EventObject()
    var purchased = 0
    var purchasedEvents: [String] = ["hf774k39d","ld02pfn23","dksf333f"]
    
    @IBAction func startAdventureTapped(_ sender: AnyObject) {
  
        if purchasedEvents.contains(passedEvent.EventID!) { //should work on "cold teas"
            
            performSegue(withIdentifier: "StartToStop", sender: nil)

        }
        else{
            
            let alert = UIAlertController(title: "Warning", message: "Max nuber of stops is 10", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    @IBAction func viewGalleryPressed(_ sender: AnyObject) {
    
        
        //ViewGallery
        performSegue(withIdentifier: "ViewGallery", sender: nil)
        
    }

    
    override func viewWillAppear(_ animated: Bool) {
        adventureName.text = passedEvent.EventName
        guideName.text = passedEvent.UserID
        adventureDescription.text = passedEvent.MainDescription
        backgroundImage.image = passedEvent.MainPicture
        
        if passedEvent.EventRating > 4.5{
            starsImage.image = #imageLiteral(resourceName: "Star1.png")
        }
        else if passedEvent.EventRating > 4{
            starsImage.image = #imageLiteral(resourceName: "Star2")
        }
        else if passedEvent.EventRating > 3.5{
            starsImage.image = #imageLiteral(resourceName: "Star3")
        }
        else if passedEvent.EventRating > 3{
            starsImage.image = #imageLiteral(resourceName: "Star4.png")
        }
        else if passedEvent.EventRating > 2.5{
            starsImage.image = #imageLiteral(resourceName: "Star5.png")
        }
        else if passedEvent.EventRating > 2{
            starsImage.image = #imageLiteral(resourceName: "Star6")
        }
        else if passedEvent.EventRating > 1.5{
            starsImage.image = #imageLiteral(resourceName: "Star7.png")
        }
        else if passedEvent.EventRating > 1{
            starsImage.image = #imageLiteral(resourceName: "Star8.jpg")
        }
        else if passedEvent.EventRating > 0.5{
            starsImage.image = #imageLiteral(resourceName: "Star9")
        }
        else{
            starsImage.image = #imageLiteral(resourceName: "Star10")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //--------------------------segue methods-------------------------------//
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "ViewGallery"{
            let vc = segue.destination as! AdventureGalleryViewController
            vc.newEvent = passedEvent
        }
        if segue.identifier == "StartToStop"{
            let vc = segue.destination as! StopUserViewController
            vc.passedEvent = passedEvent
        }
    }
    //does passedEvent.ObjectID show up in purchashedEventsArray
    // --> purchashedEventsArray could be querried for when app first opens and passed through
    // if not --> show alertView to block startAdventureButton
    
    
    
    
}
