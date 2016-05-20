//
//  AppDelegate.swift
//  SplitViewController
//
//  Created by KingCQ on 16/5/19.
//  Copyright © 2016年 KingCQ. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        if let splitController = self.window!.rootViewController as? UISplitViewController {
            let navigationController = splitController.viewControllers[splitController.viewControllers.count-1] as! UINavigationController
            
            navigationController.topViewController!.navigationItem.leftItemsSupplementBackButton = true
        }
        return true
    }


}

