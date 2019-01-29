//
//  AppDelegate.swift
//  CommentWallFlutterTest
//
//  Created by Borko Tomic on 1/29/19.
//  Copyright © 2019 Borko Tomic. All rights reserved.
//

import UIKit
import Flutter
import FlutterPluginRegistrant

@UIApplicationMain
class AppDelegate: FlutterAppDelegate {

    var flutterEngine : FlutterEngine?


    override func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.flutterEngine = FlutterEngine(name: "io.flutter", project: nil);
        self.flutterEngine?.run(withEntrypoint: nil);
        GeneratedPluginRegistrant.register(with: self.flutterEngine);
        return super.application(application, didFinishLaunchingWithOptions: launchOptions);
    }


}

