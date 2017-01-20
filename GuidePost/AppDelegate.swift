//
//  AppDelegate.swift
//  GuidePost
//
//  Created by Bryan Campbell on 9/7/16.
//  Copyright (c) 2016 Bryan Campbell. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

// remove home view controller?  -->  doesnt reall add much --> adds in tableView?
//
//change the filters in searchVC to be segmented control
//
//make more complete --> multiple spots -->
//add paywall

//UI
//1) Remove placeholder text in description fields
//2) Have "Add Picture" button actually bring up a cameraview
//3) Create arrays to store entered pics and descriptions
//4) Bundle these entered values into eventObjects
//

//Are your nights out the best in the city?  Do you get into weird exotic situations?  Do you want to share these amazing experiences with the world?  Post your night itineary on GuidePost and become a tastemaker.  Well recieved guides can even earn bitcoin for their hard work!



