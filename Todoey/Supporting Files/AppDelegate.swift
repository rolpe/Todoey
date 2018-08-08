//
//  AppDelegate.swift
//  Todoey
//
//  Created by Ron Lipkin on 7/10/18.
//  Copyright © 2018 Ron Lipkin. All rights reserved.
//

import UIKit
import RealmSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        print(Realm.Configuration.defaultConfiguration.fileURL!)
        
        let config = Realm.Configuration(
            
            schemaVersion: 2,
            
            migrationBlock: { migration, oldSchemaVersion in
                
                if (oldSchemaVersion < 2) {

                }
        })
        
        Realm.Configuration.defaultConfiguration = config
        
        
        do {
            _ = try Realm()
        } catch {
            print("Error initializing new Realm: \(error)")
        }
        
        
        return true
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
        // Saves changes in the application's managed object context before the application terminates.
    }
    


}

