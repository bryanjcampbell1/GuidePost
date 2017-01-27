//
//  SearchScreenViewController.swift
//  GuidePost
//
//  Created by Bryan Campbell on 9/12/16.
//  Copyright (c) 2016 Bryan Campbell. All rights reserved.
//

import Foundation
import UIKit

class SearchScreenViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var headerImage: UIImageView!
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var locationTextField: UITextField!
    
    @IBOutlet weak var bestRankedButton: UIButton!
    @IBOutlet weak var bestMatchedButton: UIButton!
    @IBOutlet weak var distanceButon: UIButton!
    
    @IBOutlet weak var homeButton: UIButton!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var profileButton: UIButton!
    @IBOutlet weak var createButton: UIButton!
    
    
    // Data model: These strings will be the data for the table view cells
    var tagsArray: [String] = ["Parties", "Adventures", "Music", "Food Tours", "Bar Crawls"]
    
    // cell reuse id (cells that scroll out of view can be reused)
    let cellReuseIdentifier = "cell"
    
    //Array of events
    var listOfEvents:  NSMutableArray = []
    //var titleOfEvents: NSMutableArray = []
    var titleOfEvents: [String] = []
    //var arrayOfInts: [Int]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Register the table view cell class and its reuse id
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)
        
        // This view controller itself will provide the delegate methods and row data for the table view.
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    // number of rows in table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if listOfEvents.count == 0 {
        return self.tagsArray.count
        }
        else{
          return self.listOfEvents.count
        }
    }
    
    // create a cell for each table view row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // create a new cell if needed or reuse an old one
        let cell:UITableViewCell = self.tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as UITableViewCell!
        
        
        
        // set the text from the data model
         if listOfEvents.count == 0 {
        cell.textLabel?.text = self.tagsArray[(indexPath as NSIndexPath).row]
        }
         else{
            cell.textLabel?.text = self.titleOfEvents[(indexPath as NSIndexPath).row]
        }
        
        return cell
    }
    
    // method to run when table view cell is tapped
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped cell number \((indexPath as NSIndexPath).row).")
        
        if listOfEvents.count == 0 {
            print("There are no objects")
            
            // search under tag and refresh tableView
            searchFunction(w:tagsArray[(indexPath as NSIndexPath).row], x:"", y: "", z: "Best Rated")
            print("search for" + tagsArray[(indexPath as NSIndexPath).row])
        }
        else {
        
        performSegue(withIdentifier: "searchCellTapped", sender: nil)
        }
    }
    
    
    
    
    
    
    
    
    @IBAction func searchAction(_ sender: AnyObject) {
        searchFunction(w:"", x: searchTextField.text!, y: locationTextField.text!, z: "Best Rated") //change rating buttons to segmented contol
        
    }
    
    @IBAction func locationAction(_ sender: AnyObject) {
        searchFunction(w:"", x: searchTextField.text!, y: locationTextField.text!, z: "Best Rated")
    }
    
    
    func searchFunction(w:String,  x: String, y: String, z:String ) {
        //1) connect to db
        //2) query db with x,y,z
        //3) return ordered data from db
        //4) format data into event objects
        //5) put events into events array
        
        // when searh is initiatad --> connect to db, query db, return events, load into listOfEvents to be used by tableView
        //-------------------------------------package the following--------------------------------//
        let newEvent = EventObject()
        let newEvent2 = EventObject()
        let newEvent3 = EventObject()
        
        
        //create an event to diplay
        newEvent.EventName = "Cold Teas"
        newEvent.Tags = "Late Night, Drinks"
        newEvent.FirstAddress = "72 Chinatown St."
        newEvent.MainDescription = "Late night speakeasy with greasy comfort food,  Excellent post night-out meal.  Make sure to order the cold tea."
        //newEvent.MainPicture = #imageLiteral(resourceName: "images.jpg")
        newEvent.FirstName = "Moonvilla"
        newEvent.EventID = "ld02pfn23"
        //someEvent.FirstPic = stopImage.image
        newEvent.FirstDescription = "Dont stop!!"
        newEvent.cellImages.append(#imageLiteral(resourceName: "images.jpg"))
        newEvent.cellImages.append(#imageLiteral(resourceName: "images.jpg"))
        newEvent.cellImages.append(#imageLiteral(resourceName: "images.jpg"))
        newEvent.cellImages.append(#imageLiteral(resourceName: "images.jpg"))
        
        //create an event to diplay
        newEvent2.EventID = "ld0juygn23"
        newEvent2.EventName = "Thai food tour"
        newEvent2.Tags = "Lunch, Dinner, Food Tour"
        newEvent2.FirstAddress = "2 Allston St."
        newEvent2.MainDescription = "S&I is the best!"
        //newEvent2.MainPicture = #imageLiteral(resourceName: "images.jpg")
        newEvent2.FirstName = "SandI"
        //someEvent.FirstPic = stopImage.image
        newEvent2.FirstDescription = "Keep Eating.  Thai Spicy!"
        newEvent2.cellImages.append(#imageLiteral(resourceName: "images.jpg"))
        newEvent2.cellImages.append(#imageLiteral(resourceName: "images.jpg"))
        newEvent2.cellImages.append(#imageLiteral(resourceName: "images.jpg"))
        
        
        //create an event to diplay
        newEvent3.EventName = "Pants off Dance off"
        newEvent3.Tags = "Late Night, Drinks, Party"
        newEvent3.FirstAddress = "34 White Cat St."
        newEvent3.MainDescription = "its the best ever buy this one for a dance filled night!"
        //newEvent2.MainPicture = #imageLiteral(resourceName: "images.jpg")
        newEvent3.FirstName = "WhiteHouse"
        //someEvent.FirstPic = stopImage.image
        newEvent3.FirstDescription = "Better than Gay gardens!"
        newEvent3.cellImages.append(#imageLiteral(resourceName: "images.jpg"))
        newEvent3.cellImages.append(#imageLiteral(resourceName: "images.jpg"))
        newEvent3.cellImages.append(#imageLiteral(resourceName: "images.jpg"))
        newEvent3.cellImages.append(#imageLiteral(resourceName: "images.jpg"))
        newEvent3.cellImages.append(#imageLiteral(resourceName: "images.jpg"))
        newEvent3.cellImages.append(#imageLiteral(resourceName: "images.jpg"))
        
        //----------------------------------------------------------------------------------------------//
        
        listOfEvents = [newEvent, newEvent2, newEvent3]
        
    /*
        //reload tableview with titles of found events
        for index in 0...listOfEvents.count {
            
            
            
            titleOfEvents.append()
            index
        }
        */
        
        for var i in (0..<listOfEvents.count)
        {
            var placeholder = EventObject()
            placeholder = listOfEvents[i] as! EventObject
            
            titleOfEvents.append(placeholder.EventName!)
        }
        print(titleOfEvents.count)
        
        self.tableView.reloadData()
}
    
    
    
    
    
    
    //
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "searchCellTapped" ,
            let nextScene = segue.destination as? AdventureFrontPageUserViewController ,
            let indexPath = self.tableView.indexPathForSelectedRow {
            let selectedVehicle = listOfEvents[indexPath.row]
            //let selectedVehicle = newEvent2
            nextScene.passedEvent = selectedVehicle as! EventObject
        }
    }
    
    
    
    
}
