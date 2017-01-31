//
//  AdventureGalleryViewController.swift
//  GuidePost
//
//  Created by Bryan Campbell on 1/25/17.
//  Copyright © 2017 Bryan Campbell. All rights reserved.
//

import Foundation
import UIKit

class AdventureGalleryViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
 
    var newEvent = EventObject()
    var celltapped: Int?
    
    @IBOutlet weak var collection: UICollectionView!
    
    @IBAction func backButtonPressed(_ sender: AnyObject) {
        
        //BackToAdventure
        performSegue(withIdentifier: "BackToAdventure", sender: nil)
        
    }

    let reuseIdentifier = "cell2" // also enter this string as the cell identifier in the storyboard
    
    
    // MARK: - UICollectionViewDataSource protocol
    
    // tell the collection view how many cells to make
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
 
            return self.newEvent.cellImages.count
        
    }
    
    // make a cell for each cell index path
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // get a reference to our storyboard cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as! AnotherCollectionViewCell
        
        cell.backgroundColor = UIColor.cyan // make cell more visible in our example project
        cell.layer.borderColor = UIColor.black.cgColor
        cell.layer.borderWidth = 1
        cell.layer.cornerRadius = 8
        
        cell.cellImage2.image = newEvent.cellImages[indexPath.item]
        
        
        return cell
    }


    // MARK: - UICollectionViewDelegate protocol
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        // handle tap events
        print("You selected cell #\(indexPath.item)!")
        celltapped = indexPath.item
        
        performSegue(withIdentifier: "GalleryToDetail", sender: nil)
        
    }
    
    // change background color when user touches cell
    func collectionView(_ collectionView: UICollectionView, didHighlightItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        cell?.backgroundColor = UIColor.red
    }
    
    // change background color back when user releases touch
    func collectionView(_ collectionView: UICollectionView, didUnhighlightItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        cell?.backgroundColor = UIColor.cyan
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "BackToAdventure"{
            let vc = segue.destination as! AdventureFrontPageUserViewController
            vc.passedEvent = newEvent
        }
        else if segue.identifier == "GalleryToDetail"{
            let vc = segue.destination as! DetailImageViewController
            vc.passedEvent = newEvent
            vc.celltapped = celltapped
            
            //Also pass the ifo of which cell was tapped
            
        }
    }
    
    //-------------------------------------- standard functions --------------------------------//
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    

}
