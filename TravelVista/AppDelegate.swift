//
//  AppDelegate.swift
//  TravelVista
//
//  Created by Amandine Cousin on 13/12/2023.
//

import UIKit
import SwiftUI

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let listView = ListView(region: [
            Region(
                name: "Region1",
                countries: [
                    Country(name: "Country1", capital: "Capital1", description: "description for country 1.description for country 1.description for country 1.description for country 1.description for country 1.description for country 1.", rate: 4, pictureName: "vietnam", coordinates: Coordinates(latitude: 1, longitude: 1)),
                    Country(name: "Country2", capital: "Capital2", description: "description for country 2.description for country 2.description for country 2.description for country 2.description for country 2.description for country 2.", rate: 3, pictureName: "vietnam", coordinates: Coordinates(latitude: 2, longitude: 2))
                ]
            ),
            Region(
                name: "Region2",
                countries: [
                    Country(name: "Country3", capital: "Capital3", description: "description for country 3.description for country 3.description for country 3.description for country 3.description for country 3.description for country 3.", rate: 5, pictureName: "vietnam", coordinates: Coordinates(latitude: 3, longitude: 3))
                ]
            )
        ])
        
        let hostingController = UIHostingController(rootView: listView)
        
        // configuration de la fenetre principale
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = hostingController
        window?.makeKeyAndVisible()
                
        return true
    }
}

