//
//  HomePageViewAdapter.swift
//  CVG
//
//  Created by Carlos Vazquez Gomez on 7/6/17.
//  Copyright © 2017 Carlos Vázquez Gómez. All rights reserved.
//

import UIKit

class HomePageViewAdapter: NSObject {
    
    init(pageView:UIPageViewController, items:[String]) {
        super.init()
    }
    
    fileprivate func prepareAdapter() {
    }
}

extension HomePageViewAdapter: UIPageViewControllerDelegate {
    //TODO: here goes delegate methods
}

extension HomePageViewAdapter: UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        return UIViewController()
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        return UIViewController()
    }
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return 3
    }
    
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        return 0
    }
}
