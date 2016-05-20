//
//  SplitController.swift
//  SplitViewController
//
//  Created by KingCQ on 16/5/19.
//  Copyright © 2016年 KingCQ. All rights reserved.
//

import UIKit

class SplitController: UISplitViewController,UISplitViewControllerDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
    }
    
    func splitViewController(splitViewController: UISplitViewController, showDetailViewController vc: UIViewController, sender: AnyObject?) -> Bool {
        
        return true
    }
    
//    func primaryViewControllerForExpandingSplitViewController(splitViewController: UISplitViewController) -> UIViewController? {
//        return splitViewController.viewControllers[1]
//    }
//    func primaryViewControllerForCollapsingSplitViewController(splitViewController: UISplitViewController) -> UIViewController? {
//        return splitViewController.viewControllers[0]
//    }
    
//    func splitViewController(splitViewController: UISplitViewController, separateSecondaryViewControllerFromPrimaryViewController primaryViewController: UIViewController) -> UIViewController? {
//        print(viewControllers[0])
//        return splitViewController.viewControllers[0]
//    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }
}
