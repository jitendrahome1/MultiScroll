//
//  ViewController.swift
//  ExampleMultiScroll
//
//  Created by Jitendra on 05/12/17.
//  Copyright © 2017 Jitendra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

// MARK- TableView Delegte And DataSource
extension ViewController{
    func numberOfSectionsInTableView(_ tableView: UITableView) -> Int {
        
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            return 1
        }
        
        else if section == 1{
            return 1
        }
        return 0
    
    }
    
    func tableView(_ tableView: UITableView, cellForRowAtIndexPath indexPath: IndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        if indexPath.section == 0 {
        cell = tableView.dequeueReusableCell(withIdentifier: String(describing: MultiScrollTableCell1.self), for: indexPath) as! MultiScrollTableCell1
        }
        else if indexPath.section == 1 {
         cell = tableView.dequeueReusableCell(withIdentifier: String(describing: MultiScrollTableCell2.self), for: indexPath) as! MultiScrollTableCell2
            (cell as! MultiScrollTableCell2).dataSource = "sd" as AnyObject
        }
        
       return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAtIndexPath indexPath: IndexPath) -> CGFloat{
        
        if indexPath.section == 0 {
        return 80
        
        }
        else if indexPath.section == 1 {
         return 340
        }
        return 0.0
    }
}

