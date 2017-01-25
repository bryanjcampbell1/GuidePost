//
//  CreatePage0neViewController.swift
//  GuidePost
//
//  Created by Bryan Campbell on 9/12/16.
//  Copyright (c) 2016 Bryan Campbell. All rights reserved.
//

import Foundation
import UIKit

class CreatePageOneViewController: UIViewController {
    
    @IBOutlet weak var headerImage: UIImageView!
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var publishButton: UIButton!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var tagsTextField: UITextField!
    @IBOutlet weak var descriptionOfAdventure: UITextView!
    
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var addPicButton: UIButton!
    @IBOutlet weak var addEventButton: UIButton!
    @IBOutlet weak var adventurePic: UIImageView!
    
    @IBOutlet weak var homeButton: UIButton!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var profileButton: UIButton!
    @IBOutlet weak var createButton: UIButton!
    

    var newEvent = EventObject()
    
override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addPic(_ sender: AnyObject) {
        
    }
    @IBAction func save(_ sender: AnyObject) {
        newEvent.EventName = nameTextField.text
        newEvent.Tags = tagsTextField.text
        newEvent.EventName = nameTextField.text
        newEvent.FirstAddress = addressTextField.text
        newEvent.MainDescription = descriptionOfAdventure.text
        newEvent.MainPicture = adventurePic.image
        
        newEvent.saveEventObject()
    }
    @IBAction func publish(_ sender: AnyObject) {
        newEvent.EventName = nameTextField.text
        newEvent.Tags = tagsTextField.text
        newEvent.EventName = nameTextField.text
        newEvent.FirstAddress = addressTextField.text
        newEvent.MainDescription = descriptionOfAdventure.text
        newEvent.MainPicture = adventurePic.image
        
        newEvent.Publish = 1
        
        newEvent.saveEventObject()
        
    }
    @IBAction func addEvent(_ sender: AnyObject) {
        newEvent.EventName = nameTextField.text
        newEvent.Tags = tagsTextField.text
        newEvent.EventName = nameTextField.text
        newEvent.FirstAddress = addressTextField.text
        newEvent.MainDescription = descriptionOfAdventure.text
      //  newEvent.MainPicture = adventurePic.image
        
        newEvent.saveEventObject()
        
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "NextStop"{
            let vc = segue.destination as! CreatePageTwoViewController
            vc.someEvent = newEvent
        }
    }

    
    
}
