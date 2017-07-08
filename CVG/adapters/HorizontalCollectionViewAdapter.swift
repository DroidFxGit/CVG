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
        configureLayout()
    }
    
    fileprivate func prepareAdapter () {
        collectionView?.isPagingEnabled = true
        collectionView?.dataSource = self
        collectionView?.delegate = self
    }
    
    fileprivate func configureLayout() {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        let width = 400
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        layout.itemSize = CGSize(width: width - 20, height: 120)
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 0
        collectionView!.collectionViewLayout = layout
    }
}

extension HorizontalCollectionViewAdapter: UICollectionViewDelegate {
}

extension HorizontalCollectionViewAdapter: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        //TODO: this will be dynamic from object
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "detailCell", for: indexPath)

        return cell
    }
}
