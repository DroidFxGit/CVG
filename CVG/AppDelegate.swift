//
//  AppDelegate.swift
//  CVG
//
//  Created by Carlos Vázquez Gómez on 7/2/17.
//  Copyright © 2017 Carlos Vázquez Gómez. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        NewRelic.start(withApplicationToken: "AA9cb8d175d07ff709cccff7971c34ee41bdf9f2ce")
        
        window = UIWindow(frame: UIScreen.main.bounds)
        let homeView = HomeViewController()
        window?.rootViewController = homeView
        window?.makeKeyAndVisible()
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        
    }

    func applicationWillTerminate(_ application: UIApplication) {
        
    }


}

