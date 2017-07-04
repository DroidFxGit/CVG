//
//  MenuSections.swift
//  CVG
//
//  Created by Carlos Vazquez Gomez on 7/4/17.
//  Copyright © 2017 Carlos Vázquez Gómez. All rights reserved.
//

import UIKit
import Unbox

extension MenuSection {
    
    // This method can be replaced for a Network service in case options
    // could be modified remotely or for a custom session user.
    static var menuSections: [MenuSection] = {
        guard let url = Bundle.main.url(forResource: "menu_items", withExtension: "json"),
            let data = try? Data(contentsOf: url) else {
                return []
        }
        do {
            let sections: [MenuSection] = try unbox(data: data)
            return sections
        } catch {
            print(error)
            return []
        }
    }()
    
    // These should match with ids in 'menu_items.json'
    enum Identifiers: String {
        case nearest_bank
        case financial_monitor
        case news_dollar
        case news_euro
        case settings
        case logout
    }
    
}


