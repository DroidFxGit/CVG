//
//  HorizontalCollectionViewAdapter.swift
//  CVG
//
//  Created by Carlos Vazquez Gomez on 7/7/17.
//  Copyright © 2017 Carlos Vázquez Gómez. All rights reserved.
//

import UIKit

class HorizontalCollectionViewAdapter: NSObject {
    
    fileprivate var elements: [String]
    fileprivate weak var collectionView: UICollectionView?
    
    init(elements: [String], collectionView: UICollectionView) {
        self.elements = elements
        self.collectionView = collectionView
        super.init()
        prepareAdapter()
    }
    
    fileprivate func prepareAdapter () {
        collectionView?.isPagingEnabled = true
        collectionView?.dataSource = self
        collectionView?.delegate = self
    }
}

extension HorizontalCollectionViewAdapter: UICollectionViewDelegate {
}

extension HorizontalCollectionViewAdapter: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //TODO: this will be dynamic from object
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //TODO:
        return UICollectionViewCell()
    }
}
