//
//  ViewController.swift
//  MVC-Pattern
//
//  Created by Amirhossein on 8/10/23.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    private let frameworkVC: UIViewController = {
        let vc = FrameworkController(nibName: "FrameworkView", bundle: nil)
        let tabBarItem = UITabBarItem(title: "Frameworks", image: UIImage(named: "selectedFarmework"), selectedImage: UIImage(named: "selectedFarmework"))
        vc.tabBarItem = tabBarItem
        return vc
    }()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewControllers = [frameworkVC]
        self.tabBar.backgroundColor = .white
        self.tabBar.tintColor = .purple
        self.tabBar.barTintColor = .red
        self.selectedViewController = frameworkVC
    }


}

