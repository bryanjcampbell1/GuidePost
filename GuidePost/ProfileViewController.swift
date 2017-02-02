//
//  ProfileViewController.swift
//  GuidePost
//
//  Created by Bryan Campbell on 1/31/17.
//  Copyright © 2017 Bryan Campbell. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UIImagePickerControllerDelegate,
UINavigationControllerDelegate {
    

    var animal = ["VISA *** *** 9600","Citizens"]
    var plant = ["Citizens 8503","DCU 9210"]
    
    let picker = UIImagePickerController()
    
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var profilePic: UIImageView!
    
    @IBOutlet weak var paymentTableview: UITableView!
    
    @IBOutlet weak var depositsTableView: UITableView!
    
    @IBOutlet weak var addPaymentButton: UIButton!
    @IBOutlet weak var addDepositButton: UIButton!
    
    
    @IBAction func addProfilePic(_ sender: AnyObject) {
        picker.allowsEditing = false
        picker.sourceType = .photoLibrary
        picker.mediaTypes = UIImagePickerController.availableMediaTypes(for: .photoLibrary)!
        picker.modalPresentationStyle = .popover
        present(picker, animated: true, completion: nil)
        
    }
    
    @IBAction func addPaymentOption(_ sender: AnyObject) {
    }
    
    @IBAction func addDepositOption(_ sender: AnyObject) {
    }
    
    @IBAction func backButtonPressed(_ sender: AnyObject) {
        performSegue(withIdentifier: "BackToHome", sender: nil)
    }


    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        picker.delegate = self
        
        paymentTableview.dataSource = self
        paymentTableview.delegate = self
        paymentTableview.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        depositsTableView.dataSource = self
        depositsTableView.delegate = self
        depositsTableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell1")
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // MARK: - Table view data source
    
    
    
    
    // number of rows in table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == self.paymentTableview {
            return self.animal.count
        }
            
        else { // tableView == tableView2
            
            print(self.plant.count)
            return self.plant.count
            
        }
        
    }
    
    // create a cell for each table view row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell:UITableViewCell = self.paymentTableview.dequeueReusableCell(withIdentifier: "cell") as UITableViewCell!
        
        if tableView == self.paymentTableview {
            
            // set the text from the data model
            cell.textLabel?.text = self.animal[(indexPath as NSIndexPath).row]
        }
            
        else { // tableView == tableView2
            // create a new cell if needed or reuse an old one
            cell = self.depositsTableView.dequeueReusableCell(withIdentifier: "cell1") as UITableViewCell!
            
            // set the text from the data model
            cell.textLabel?.text = self.plant[(indexPath as NSIndexPath).row]
            print(self.plant[(indexPath as NSIndexPath).row])
        }
        
        return cell
    }
    
    // method to run when table view cell is tapped
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped cell number \((indexPath as NSIndexPath).row).")
    }

    
    
    //MARK: - Delegates
    func imagePickerController(_ picker: UIImagePickerController,
                               didFinishPickingMediaWithInfo info: [String : AnyObject])
    {
        var  chosenImage = UIImage()
        chosenImage = info[UIImagePickerControllerOriginalImage] as! UIImage //2
        
        //newEvent.cellImages.append(chosenImage)
        
        //self.collection.reloadData()
        
        profilePic.image = chosenImage
        
        dismiss(animated:true, completion: nil) //5
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }

    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "BackToHome"{
            
        }
       
    }
}
