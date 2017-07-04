//
//  MenuSection.swift
//  CVG
//
//  Created by Carlos Vázquez Gómez on 7/3/17.
//  Copyright © 2017 Carlos Vázquez Gómez. All rights reserved.
//

import Foundation

struct MenuSection {
    let identifier: String
    let title: String
    let rows: [MenuItem]
    
    func item(at row: Int) -> MenuItem {
        return self.rows[row]
    }
    
    func numberOfRows() -> Int {
        return self.rows.count
    }
}
