//
//  MasterController.swift
//  SplitViewControllerSwift
//
//  Created by KingCQ on 16/5/19.
//  Copyright © 2016年 KingCQ. All rights reserved.
//

import UIKit

class MasterController: UITableViewController, UISplitViewControllerDelegate {
    
    var collapseDetailViewController: Bool  = true
    
    var names = ["general","privacy","icloud","maps","news","safari","photos","game","twiter","facebook","vimo","Developer"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.separatorStyle = .SingleLine
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        splitViewController?.delegate = self
        title = "Master"
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "hel", style: .Plain, target: self, action: #selector(hel))
        
    }
    
    //MARK: - tableViewDataSource
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        cell.textLabel?.text = names[indexPath.row]
        cell.accessoryType = .DisclosureIndicator
        return cell
    }
    
    //MARK: - tableViewDelegate
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        jump(indexPath)
        
    }
    
    func jump(indexPath: NSIndexPath) {
        
        let dest = DetailController()
        if UIScreen.mainScreen().bounds.width > UIScreen.mainScreen().bounds.height {
            self.showDetailViewController(dest, sender: names[indexPath.row])
        } else {
            self.showViewController(dest, sender: names[indexPath.row])
        }

    }
    
    //MARK: - UISplitViewControllerDelegate 设置后首次进入为master页面
    func splitViewController(splitViewController: UISplitViewController, collapseSecondaryViewController secondaryViewController: UIViewController, ontoPrimaryViewController primaryViewController: UIViewController) -> Bool {
        return collapseDetailViewController
    }
    
    
    //判断屏幕旋转
    override func didRotateFromInterfaceOrientation(fromInterfaceOrientation: UIInterfaceOrientation) {
    
        
    }
    override func willRotateToInterfaceOrientation(toInterfaceOrientation: UIInterfaceOrientation, duration: NSTimeInterval) {
        
    }
    
    func hel() {
        
    }
}

