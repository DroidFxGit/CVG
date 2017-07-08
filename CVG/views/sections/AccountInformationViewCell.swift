//
//  AccountInformationViewCell.swift
//  CVG
//
//  Created by Carlos Vazquez Gomez on 7/7/17.
//  Copyright © 2017 Carlos Vázquez Gómez. All rights reserved.
//

import UIKit

class AccountInformationViewCell: UICollectionViewCell {
    
    @IBOutlet weak var horizontalCollectionView: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    fileprivate var horizontalAdapter: HorizontalCollectionViewAdapter?
    
    fileprivate var elements: [String]?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    convenience init(elements: [String]) {
        self.init()
        self.elements = elements
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
//        configureAdapter()
    }
    
    func configureAdapter() {
        //TODO: delete temporal after complete webservices
        let temporal = ["1", "2", "3"]
        horizontalAdapter = HorizontalCollectionViewAdapter(elements: temporal, collectionView: horizontalCollectionView);
    }

}
