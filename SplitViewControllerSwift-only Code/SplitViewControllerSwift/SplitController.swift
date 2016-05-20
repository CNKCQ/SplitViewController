//
//  SplitController.swift
//  SplitViewControllerSwift
//
//  Created by KingCQ on 16/5/19.
//  Copyright © 2016年 KingCQ. All rights reserved.
//

import UIKit

let masterNav: UINavigationController = NavigationController()
let detailNav: UINavigationController = NavigationController()

class SplitController: UISplitViewController, UISplitViewControllerDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        let masterController: MasterController = MasterController()
        masterNav.addChildViewController(masterController)
        let detailController = DetailController()
        detailNav.addChildViewController(detailController)
        viewControllers = [masterNav,detailNav];
        preferredDisplayMode = .Automatic
    }
}