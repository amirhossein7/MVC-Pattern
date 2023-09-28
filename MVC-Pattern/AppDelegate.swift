//
//  AppDelegate.swift
//  MVC-Pattern
//
//  Created by Amirhossein on 8/10/23.
//

import UIKit
import AgxioUIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow? {
        didSet {
            if #available(iOS 13.0, *) {
                // No matter what is the user preference, load the app in the light mode
                self.window?.overrideUserInterfaceStyle = .light
            }
        }
    }


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        if self.window == nil {
            self.window = UIWindow(frame: UIScreen.main.bounds)
        }
        
        AgxioUIKit.shared.configureColors(primary: "#eb4034", secondary: "#ba34eb", primaryText: "#ffffff", secondaryText: "#ffffff")
        let tabBarVC = TabBarViewController()
        self.window?.rootViewController = tabBarVC
        self.window?.makeKeyAndVisible()
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

