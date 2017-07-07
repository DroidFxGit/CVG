//
//  AppDelegate.swift
//  CVG
//
//  Created by Carlos Vázquez Gómez on 7/2/17.
//  Copyright © 2017 Carlos Vázquez Gómez. All rights reserved.
//

import UIKit
import SlideMenuControllerSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        NewRelic.start(withApplicationToken: CVGUtils.newRelicToken)
        configureMainScreen()
        
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
    
    func configureMainScreen() {
        window = UIWindow(frame: UIScreen.main.bounds)
        
        let controller = HomeViewController()
        let image = UIImage(named: "icon_menu")!
        controller.addLeftBarButtonWithImage(image)
        let mainContainer = UINavigationController(rootViewController: controller)
        
        let lateralMenu = LateralMenuViewController(sections: MenuSection.menuSections)
        lateralMenu.edgesForExtendedLayout = []
        
        let leftContainer = UINavigationController(rootViewController: lateralMenu)
        leftContainer.setNavigationBarHidden(true, animated: false)
        
        SlideMenuController.setDefaultSlideMenuOptions()
        let menuController = SlideMenuController(mainViewController: mainContainer, leftMenuViewController: leftContainer)
        
        window?.rootViewController = menuController
        window?.makeKeyAndVisible()
    }


}

