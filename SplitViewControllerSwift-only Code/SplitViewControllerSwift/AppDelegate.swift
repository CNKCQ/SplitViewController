//
//  AppDelegate.swift
//  SplitViewControllerSwift
//
//  Created by KingCQ on 16/5/19.
//  Copyright © 2016年 KingCQ. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        window?.rootViewController = SplitController()
        window?.makeKeyAndVisible()
        return true
    }



}

