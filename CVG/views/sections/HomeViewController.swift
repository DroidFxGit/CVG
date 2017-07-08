//
//  HomeViewController.swift
//  CVG
//
//  Created by Carlos Vazquez Gomez on 7/7/17.
//  Copyright © 2017 Carlos Vázquez Gómez. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    fileprivate enum CellType {
        case accountCell
        case chartCell
    }
    
    @IBOutlet weak var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: "AccountInformationViewCell", bundle: nil), forCellWithReuseIdentifier: "accountCell")
        collectionView.register(UINib(nibName: "ChartViewCell", bundle: nil), forCellWithReuseIdentifier: "chartCell")
        collectionView.isScrollEnabled = true
        configureLayout()
    }
    
    func configureLayout() {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        let width = view.bounds.width
        layout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        layout.itemSize = CGSize(width: width - 20, height: 180)
        layout.minimumInteritemSpacing = 0
        layout.minimumLineSpacing = 0
        collectionView!.collectionViewLayout = layout
    }

}

extension HomeViewController: UICollectionViewDelegate {
    
}

extension HomeViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        //TODO: this will be dynamic from object
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        var cell: UICollectionViewCell?
        let index = indexPath.section.hashValue
        
        switch index {
        case CellType.accountCell.hashValue:
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: "accountCell", for: indexPath) as! AccountInformationViewCell
            break
        case CellType.chartCell.hashValue:
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: "chartCell", for: indexPath) as! ChartViewCell
            break
        default:
            break
        }
        
        return cell!
    }
}
