//
//  CheckListViewController.swift
//  My Table View App
//
//  Created by Kousei Richeson on 2/3/18.
//  Copyright © 2018 Kousei Richeson. All rights reserved.
//

import UIKit

class CheckListViewController: UIViewController {

    var emojis = ["🍕🍕🍕", "😃", "☺️", "🏆", "🐶", "🔥"]

}


extension CheckListViewController: UITableViewDataSource {
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCustomCell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        myCustomCell.textLabel?.text = emojis[indexPath.row % emojis.count]
        return myCustomCell
    }
    
}


extension CheckListViewController: UITableViewDelegate {
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let cell = tableView.cellForRow(at: indexPath) {
            
            if cell.accessoryType == .checkmark {
                cell.accessoryType = .none
            } else {
                cell.accessoryType = .checkmark
            }
            
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        
    }
    
}



















