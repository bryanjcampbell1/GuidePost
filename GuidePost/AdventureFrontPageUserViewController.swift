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
    
    @IBAction func viewGalleryPressed(_ sender: AnyObject) {
    
        //ViewGallery
        performSegue(withIdentifier: "ViewGallery", sender: nil)
        
    }
    var passedEvent = EventObject()
    
    override func viewWillAppear(_ animated: Bool) {
        adventureName.text = passedEvent.EventName
        guideName.text = passedEvent.UserID
        adventureDescription.text = passedEvent.MainDescription
        backgroundImage.image = passedEvent.MainPicture
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
        
        //func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ViewGallery"{
            let vc = segue.destination as! AdventureGalleryViewController
            vc.newEvent = passedEvent
            
            print("segue to gallery")
            print(vc.newEvent.cellImages.count)
        }
    }
    
    
    
    
    
}
