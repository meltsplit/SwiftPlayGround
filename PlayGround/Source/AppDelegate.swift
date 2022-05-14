//
//  AppDelegate.swift
//  PlayGround
//
//  Created by 장석우 on 2022/05/02.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let nvc = NavigationController(rootViewController: ViewController1())
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = nvc
        window?.makeKeyAndVisible()
        
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = .orange
        nvc.navigationBar.standardAppearance = appearance
        nvc.navigationBar.scrollEdgeAppearance = appearance
        
        return true
    }


}

