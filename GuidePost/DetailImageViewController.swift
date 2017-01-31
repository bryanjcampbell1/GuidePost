//
//  DetailImageViewController.swift
//  GuidePost
//
//  Created by Bryan Campbell on 1/27/17.
//  Copyright © 2017 Bryan Campbell. All rights reserved.
//

import UIKit

class DetailImageViewController: UIViewController {

    var passedEvent = EventObject()
    var celltapped: Int?
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func backButtonPressed(_ sender: AnyObject) {
        performSegue(withIdentifier: "DetailToGallery", sender: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = passedEvent.cellImages[celltapped!]
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "DetailToGallery"{
            let vc = segue.destination as! AdventureGalleryViewController
            vc.newEvent = passedEvent
        }

    }
    
}
