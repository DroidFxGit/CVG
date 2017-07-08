//
//  AccountDetailViewCell.swift
//  CVG
//
//  Created by Carlos Vázquez Gómez on 7/7/17.
//  Copyright © 2017 Carlos Vázquez Gómez. All rights reserved.
//

import UIKit

class AccountDetailViewCell: UICollectionViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        let view = PageView.view()
        addSubview(view!)
    }

}
