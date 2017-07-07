//
//  PageView.swift
//  CVG
//
//  Created by Carlos Vazquez Gomez on 7/7/17.
//  Copyright © 2017 Carlos Vázquez Gómez. All rights reserved.
//

import UIKit

class PageView: UIView {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var amountLabel: UILabel!
    
    class func view() -> PageView? {
        let view = Bundle.main.loadNibNamed("PageView", owner: nil, options: nil)?.first as? PageView
        if let view = view {
            let frame = CGRect(x: 0, y: 0, width: 0, height: 160)
            view.frame = frame
            view.autoresizingMask = [.flexibleHeight, .flexibleWidth]
            
        }
        return view
    }
    
    @IBAction func detailAction(_ sender: Any) {
    }
}
