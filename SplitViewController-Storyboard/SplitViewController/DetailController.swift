//
//  DetailController.swift
//  SplitViewController
//
//  Created by KingCQ on 16/5/19.
//  Copyright © 2016年 KingCQ. All rights reserved.
//

import UIKit

class DetailController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .randomColor()
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "hah", style: .Plain, target: self, action: #selector(hah))
    }
    
    func hah() {
        
    }
}
