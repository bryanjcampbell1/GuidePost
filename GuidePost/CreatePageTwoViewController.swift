//
//  CreatePageTwoViewController.swift
//  GuidePost
//
//  Created by Bryan Campbell on 9/12/16.
//  Copyright (c) 2016 Bryan Campbell. All rights reserved.
//

import Foundation
import UIKit

class CreatePageTwoViewController: UIViewController {
    
    
    @IBOutlet weak var headerImage: UIImageView!
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var publishButton: UIButton!
    
    @IBOutlet weak var stopNameTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var stopDescription: UITextView!
    
    
    @IBOutlet weak var addPicButton: UIButton!
    @IBOutlet weak var addEventButton: UIButton!
    @IBOutlet weak var stopImage: UIImageView!
    
    @IBOutlet weak var homeButton: UIButton!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var profileButton: UIButton!
    @IBOutlet weak var createButton: UIButton!
    
    @IBAction func addPictureButtonPressed(_ sender: AnyObject) {
        
        
        performSegue(withIdentifier: "AddPic", sender: nil)
        
    }

    
    var passedEvent = EventObject()
    
    var pageCounter : Int = 0
    var someEvent = EventObject() //learn how to import this from previous vc
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        pageCounter = 1
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func save(_ sender: AnyObject) {
        print(update())
    }
    @IBAction func publish(_ sender: AnyObject) {
        print(update())
    }
    @IBAction func addEvent(_ sender: AnyObject) {
        print(update())
    }
    
    func update() -> String {
        if pageCounter == 1 {
            
            someEvent.FirstName = stopNameTextField.text
            someEvent.FirstAddress = addressTextField.text
            //someEvent.FirstPic = stopImage.image
            someEvent.FirstDescription = stopDescription.text
            
        } else if pageCounter == 2 {
            someEvent.SecondName = stopNameTextField.text
            someEvent.SecondAddress = addressTextField.text
           // someEvent.SecondPic = stopImage.image
            someEvent.SecondDescription = stopDescription.text
            
        } else if pageCounter == 3 {
            someEvent.ThirdName = stopNameTextField.text
            someEvent.ThirdAddress = addressTextField.text
           // someEvent.ThirdPic = stopImage.image
            someEvent.ThirdDescription = stopDescription.text
            
        }else if pageCounter == 4 {
            someEvent.FourthName = stopNameTextField.text
            someEvent.FourthAddress = addressTextField.text
           // someEvent.FourthPic = stopImage.image
            someEvent.FourthDescription = stopDescription.text
            
        }else if pageCounter == 5 {
            someEvent.FifthName = stopNameTextField.text
            someEvent.FifthAddress = addressTextField.text
            //someEvent.FifthPic = stopImage.image
            someEvent.FifthDescription = stopDescription.text
            
        }else if pageCounter == 6 {
            someEvent.SixthName = stopNameTextField.text
            someEvent.SixthAddress = addressTextField.text
          //  someEvent.SixthPic = stopImage.image
            someEvent.SixthDescription = stopDescription.text
            
        }else if pageCounter == 7 {
            someEvent.SeventhName = stopNameTextField.text
            someEvent.SeventhAddress = addressTextField.text
           // someEvent.SeventhPic = stopImage.image
            someEvent.SeventhDescription = stopDescription.text
            
        }else if pageCounter == 8 {
            someEvent.EighthName = stopNameTextField.text
            someEvent.EighthAddress = addressTextField.text
       //     someEvent.EighthPic = stopImage.image
            someEvent.EighthDescription = stopDescription.text
            
        }else if pageCounter == 9 {
            someEvent.NinethName = stopNameTextField.text
            someEvent.NinethAddress = addressTextField.text
         //   someEvent.NinethPic = stopImage.image
            someEvent.NinethDescription = stopDescription.text
            
        }else if pageCounter == 10 {
            someEvent.TenthName = stopNameTextField.text
            someEvent.TenthAddress = addressTextField.text
       //     someEvent.TenthPic = stopImage.image
            someEvent.TenthDescription = stopDescription.text
        }
        else {
            /* If condition is false then print the following */
            print("Something is wrong with pageCounter");
        }
        let message = "Updated eventObject!"
        someEvent.saveEventObject()
        return message
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddPic"{
            let vc = segue.destination as! AddImageViewController
            vc.newEvent = someEvent
            
            print( "add pic segue clicked")
            
            print(self.someEvent.cellImages.count)
            print(someEvent.cellImages.count)
         
            
        }
    }
    
}

