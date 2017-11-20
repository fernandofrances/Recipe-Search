//
//  AppDelegate.swift
//  RecipeSearch
//
//  Created by Fernando Frances on 20/11/2017.
//  Copyright © 2017 Fernando Frances. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    let appAssembly = AppAssembly()
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        let initialViewController = appAssembly.coreAssembly.searchAssembly.viewController()
        appAssembly.window.rootViewController = appAssembly.navigationController
        appAssembly.navigationController.pushViewController(initialViewController, animated: false)
        appAssembly.window.makeKeyAndVisible()
        return true
    }

}
