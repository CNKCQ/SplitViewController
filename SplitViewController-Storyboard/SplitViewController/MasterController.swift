//
//  MasterController.swift
//  SplitViewController
//
//  Created by KingCQ on 16/5/19.
//  Copyright © 2016年 KingCQ. All rights reserved.
//

import UIKit

class MasterController: UITableViewController,UISplitViewControllerDelegate {
    
    var firstCome: Bool = true
    
    var collapseDetailViewController: Bool  = true

    var names = ["general","privacy","icloud","maps","news","safari","photos","game","twiter","facebook","vimo","Developer"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.separatorStyle = .SingleLine
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "hel", style: .Plain, target: self, action: #selector(hel))
        splitViewController?.delegate = self

//        UIDeviceOrientation duration = [[UIDevice currentDevice]orientation];
        if UIScreen.mainScreen().bounds.height < UIScreen.mainScreen().bounds.width {
            if firstCome {
                firstCome = false
                performSegueWithIdentifier("master_to_detail", sender: names[0])
            }

        }
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
        collapseDetailViewController = !collapseDetailViewController
        performSegueWithIdentifier("master_to_detail", sender: names[indexPath.row])

    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "master_to_detail" {
            if let destNavigationController: UINavigationController = segue.destinationViewController as? UINavigationController {
                let controller = destNavigationController.topViewController as! DetailController
                controller.title = sender as? String

            }
        }
    }
    
    //MARK: - UISplitViewControllerDelegate 设置后首次进入为master页面
    func splitViewController(splitViewController: UISplitViewController, collapseSecondaryViewController secondaryViewController: UIViewController, ontoPrimaryViewController primaryViewController: UIViewController) -> Bool {
        return collapseDetailViewController
    }
    
    //判断屏幕旋转
    override func didRotateFromInterfaceOrientation(fromInterfaceOrientation: UIInterfaceOrientation) {
        if firstCome {
            firstCome = false
            performSegueWithIdentifier("master_to_detail", sender: names[0])
        }

    }
    
    func hel() {
        
    }
    
}

//#define UIDeviceOrientationIsPortrait(orientation)  ((orientation) == UIDeviceOrientationPortrait || (orientation) == UIDeviceOrientationPortraitUpsideDown)
//#define UIDeviceOrientationIsLandscape(orientation) ((orientation) == UIDeviceOrientationLandscapeLeft || (orientation) == UIDeviceOrientationLandscapeRight)
///参考文档http://nshipster.cn/uisplitviewcontroller/
