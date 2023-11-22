//
//  AppDelegate.swift
//  Example
//
//  Created by li.wenxiu on 2023/11/22.
//

import UIKit
import NavigationModule

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        ViewControllerModuleInitializer.initialize()
        return true
    }

}

