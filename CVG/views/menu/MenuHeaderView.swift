//
//  MenuHeaderView.swift
//  CVG
//
//  Created by Carlos Vázquez Gómez on 7/3/17.
//  Copyright © 2017 Carlos Vázquez Gómez. All rights reserved.
//

import UIKit

class MenuHeaderView: UIView {
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var profileNameLabel: UILabel!
    
    class func view() -> MenuHeaderView? {
        let view = Bundle.main.loadNibNamed("MenuHeaderView", owner: nil, options: nil)?.first as? MenuHeaderView
        if let view = view {
            let frame = CGRect(x: 0, y: 0, width: 0, height: 120)
            view.frame = frame
            view.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        }
        return view
    }
    
}
