//
//  LateralMenuViewController.swift
//  CVG
//
//  Created by Carlos Vázquez Gómez on 7/3/17.
//  Copyright © 2017 Carlos Vázquez Gómez. All rights reserved.
//

import UIKit

class LateralMenuViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    fileprivate var adapter: MenuTableViewAdapter?
    let sections: [MenuSection]
    
    init(sections: [MenuSection]) {
        self.sections = sections
        super.init(nibName: "LateralMenuViewController", bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureHeader()
        configureAdapter()
    }
    
    fileprivate func configureHeader() {
        let header = MenuHeaderView.view()
        if let header = header {
            // A container is required because the header view is being loaded from a nib
            // Otherwise the constraint will not be applied
            let container = UIView(frame: header.frame)
            container.addSubview(header)
            tableView.tableHeaderView = container
        }
    }
    
    fileprivate func configureAdapter() {
        adapter = MenuTableViewAdapter(tableView: tableView, items: sections)
    }

}
