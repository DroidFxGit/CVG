//
//  MenuTableViewAdapter.swift
//  CVG
//
//  Created by Carlos Vázquez Gómez on 7/3/17.
//  Copyright © 2017 Carlos Vázquez Gómez. All rights reserved.
//

import UIKit

class MenuTableViewAdapter: NSObject {
    
    fileprivate let items: [MenuSection]
    fileprivate let rowCellIdentifier: String
    fileprivate weak var tableView: UITableView?
    
    init(tableView: UITableView, items:[MenuSection], rowIdentifier: String = "menuCellIdentifier") {
        self.items = items
        self.rowCellIdentifier = rowIdentifier
        self.tableView = tableView
        super.init()
        prepareAdapter()
    }
    
    fileprivate func prepareAdapter() {
        guard let tableView = tableView else { return }
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: rowCellIdentifier)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.separatorStyle = .none
        tableView.backgroundColor = .darkGray
        tableView.isScrollEnabled = false
    }
}


extension MenuTableViewAdapter: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return items.count   
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let menuSection = self.items[section]
        return menuSection.numberOfRows()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: rowCellIdentifier)!
        
        let menuSection = self.items[indexPath.section]
        let row = menuSection.item(at: indexPath.row)
        
        cell.textLabel?.text = row.title
        
        return cell
    }
}

extension MenuTableViewAdapter: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.backgroundColor = .lightGray
        cell.textLabel?.textColor = .white
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
