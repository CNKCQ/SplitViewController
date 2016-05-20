//
//  DetailController.swift
//  SplitViewControllerSwift
//
//  Created by KingCQ on 16/5/19.
//  Copyright © 2016年 KingCQ. All rights reserved.
//

import UIKit

class DetailController: UIViewController,UISplitViewControllerDelegate {
    
    var titleStr = "Detail"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "hah", style: .Plain, target: self, action: #selector(hah))
        title = titleStr
        view.backgroundColor = .randomColor()
        splitViewController?.delegate = self
        print(titleStr)
    }
    
    func splitViewController(splitViewController: UISplitViewController, showDetailViewController vc: UIViewController, sender: AnyObject?) -> Bool {
        title = "\(sender!)"
        return true
    }
    func hah() {
        
        
    }
}
