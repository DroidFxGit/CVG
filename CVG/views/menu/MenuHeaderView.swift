//
//  MenuHeaderView.swift
//  CVG
//
//  Created by Carlos Vazquez Gomez on 7/6/17.
//  Copyright © 2017 Carlos Vázquez Gómez. All rights reserved.
//

import UIKit

class MenuHeaderView : UIView {
    
    @IBOutlet weak var profileImageView: UIImageView! {
        didSet{
            profileImageView.layer.cornerRadius = 35
            profileImageView.layer.borderColor = UIColor.white.cgColor
            profileImageView.layer.borderWidth = 2.0
            profileImageView.clipsToBounds = true
        }
    }
    @IBOutlet weak var profileNameLabel: UILabel!
    
    class func view() -> MenuHeaderView? {
        let view = Bundle.main.loadNibNamed("MenuHeaderView", owner: nil, options: nil)?.first as? MenuHeaderView
        if let view = view {
            let frame = CGRect(x: 0, y: 0, width: 0, height: 120)
            view.frame = frame
            view.backgroundColor = .clear
            
            let blur = UIBlurEffect(style: .dark)
            let blurView = UIVisualEffectView(effect: blur)
            blurView.frame = view.bounds
            blurView.alpha = 0.6
            blurView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
            view.insertSubview(blurView, at: 1)
            
            view.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        }
        return view
    }
    
}
