//
//  AppDelegate.swift
//  Swift0
//
//  Created by sean on 15/7/3.
//  Copyright (c) 2015年 koudai. All rights reserved.
//

import UIKit


//
//#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        //nav_1 在iOS 7中，不再使用tintColor属性来设置导航栏的颜色，而是使用barTintColor属性来修改背景色
        UINavigationBar.appearance().barTintColor = UIColor.purpleColor()
        
        var rgbcolor = 0x8c7ea8
        
        var red = CGFloat(((Double)((rgbcolor & 0xFF0000) >> 16))/255.0)
        var green = CGFloat(((Double)((rgbcolor & 0xFF00) >> 8))/255.0)
        var blue = CGFloat( ((Double)(rgbcolor & 0xFF))/255.0)
        var color = UIColor(red:red, green: green, blue: blue, alpha:1.0)
        
        UINavigationBar.appearance().barTintColor = color
//        UINavigationBar.appearance().setBackgroundImage(UIImage(named: "image"), forBarMetrics:  UIBarMetrics.Default)
        
        
        
        //nav_2 要想给返回按钮着色，可以使用tintColor属性
        UINavigationBar.appearance().tintColor = UIColor.whiteColor()
        
        
        
        //nav_3 改变标题的字体
        let shadow = NSShadow()
        shadow.shadowColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.8)
        shadow.shadowOffset = CGSizeMake(0, 1)
        
        //直接字典里面初始化有问题
        /*
        http://stackoverflow.com/questions/26272286/xcode-6-1-titletextattributes
        I think the problem is because they've changed UIFont's initializer in 6.1 so it can return nil.
        That is correct behavior because if you enter wrong font name there is no way to instantiate UIFont.
        In this case your dictionary becomes [NSObject: AnyObject?] which is not the same with [NSObject: AnyObject].
        You can first initialize fonts and then you can use if let syntax.
        */
        let font = UIFont(name: "HelveticaNeue-CondensedBlack", size: 17)
        if let font = font {
            UINavigationBar.appearance().titleTextAttributes =
                [NSFontAttributeName : font,
                NSShadowAttributeName:shadow,
                NSForegroundColorAttributeName : UIColor(red: 245.0/255.0, green: 245.0/255.0, blue: 245.0/255.0, alpha: 1.0)]
        }
        
        //
        application.setStatusBarStyle(UIStatusBarStyle.LightContent, animated: false)
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

