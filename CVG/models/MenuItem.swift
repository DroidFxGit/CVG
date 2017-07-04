//
//  MenuItem.swift
//  CVG
//
//  Created by Carlos Vázquez Gómez on 7/3/17.
//  Copyright © 2017 Carlos Vázquez Gómez. All rights reserved.
//

import Foundation
import Unbox

struct MenuItem {
    let identifier: String
    let title: String
    let subtitle: String
}

extension MenuItem: Unboxable {
    
    init(unboxer: Unboxer) throws {
        identifier = try unboxer.unbox(key: "identifier")
        title = try unboxer.unbox(key: "title")
        subtitle = try unboxer.unbox(key: "subtitle")
    }
}
