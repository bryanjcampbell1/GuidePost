//
//  ProfileViewController.swift
//  GuidePost
//
//  Created by Bryan Campbell on 1/31/17.
//  Copyright © 2017 Bryan Campbell. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var profilePic: UIImageView!
    
    @IBOutlet weak var paymentTableview: UITableView!
    
    @IBOutlet weak var depositsTableView: UITableView!
    
    @IBOutlet weak var addPaymentButton: UIButton!
    @IBOutlet weak var addDepositButton: UIButton!
    
    
    @IBAction func addProfilePic(_ sender: AnyObject) {
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

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "BackToHome"{
            
        }
       
    }
}
