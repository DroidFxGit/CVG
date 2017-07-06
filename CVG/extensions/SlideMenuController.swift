//
//  SlideMenuController.swift
//  CVG
//
//  Created by Carlos Vázquez Gómez on 7/6/17.
//  Copyright © 2017 Carlos Vázquez Gómez. All rights reserved.
//

import Foundation
import SlideMenuControllerSwift

extension SlideMenuController {
    func present(controller viewController: UIViewController, modal: Bool = false) {
        if modal {
            present(viewController, animated: true, completion: nil)
        } else {
            let navigationController = UINavigationController(rootViewController: viewController)
            changeMainViewController(navigationController, close: false)
        }
    }
    
    static func setDefaultSlideMenuOptions() {
        SlideMenuOptions.hideStatusBar = false
        SlideMenuOptions.contentViewScale = 1.0
    }
}
