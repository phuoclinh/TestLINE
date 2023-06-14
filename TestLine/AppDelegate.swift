//
//  AppDelegate.swift
//  TestLine
//
//  Created by Linh Luu on 14/06/2023.
//

import Gigya
import LineSDK
import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        configGigya()
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

extension AppDelegate {
    private func configGigya() {
        LoginManager.shared.setup(channelID: "1661293469", universalLinkURL: nil)
        Gigya.sharedInstance().initFor(apiKey: "4_SsXbG2xCrv1X4sIOwwPIPA",
                                       apiDomain: "au1.gigya.com",
                                       cname: "id.dev.onlala.vn")
    }
}
