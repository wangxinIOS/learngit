//
//  ViewController.swift
//  Swift0
//
//  Created by sean on 15/7/3.
//  Copyright (c) 2015年 koudai. All rights reserved.
//

import UIKit
import MessageUI


class ViewController: UIViewController ,MFMessageComposeViewControllerDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Test Swift0"
//        self.setNeedsStatusBarAppearanceUpdate()
        
//        var array:NSArray = ["first","second"]
//        var str:AnyObject = array.objectAtIndex(0)
//        let a = str as String
        
        
//        switch ctrl {
//                case let sheep as TextKitViewController:
//                    println("oops - fractional sheep!")
//                    
//                default:
//                    println("default")
//                    break
//            }

        
        
//        a.date = NSDate.new()
//        var b = self.presentingViewController as? TextKitViewController
        
//        let intValue:Int = 98
//        let sheepCount:Double = intValue as Double
//        let sheepCount = 71/2.0 as Int
//        let sheepCount = Int(71/2.0)
        
      
        
        
        
        
//        var array:NSArray = [TextKitViewController(),"second"]
////        var sheepCount:AnyObject = array.objectAtIndex(0)
//         var sheepCount:AnyObject? = array.firstObject
//        if let a = sheepCount as? TextKitViewController {
//        
//            a.date = NSDate.new()
//        }
//        
//        switch sheepCount {
//        case let sheep as Int:
//            println("\(sheep) found")
//            
//        case let sheep as Double:
//            println("oops - fractional sheep!")
//            
//        default: break
//        }
      
        
        
        
        
        
        
        var things = [Any]()
        
        things.append(0)
        things.append(0.0)
        things.append(42)
        things.append(3.14159)
        things.append("hello")
        things.append((3.0, 5.0))
     
        
        
        for thing in things {
            switch thing {
            case 0 as Int:
                println("zero as an Int")
            case 0 as Double:
                println("zero as a Double")
            case let someInt as Int:
                println("an integer value of \(someInt)")
            case let someDouble as Double where someDouble > 0:
                println("a positive double value of \(someDouble)")
            case is Double:
                println("some other double value that I don't want to print")
            case let someString as String:
                println("a string value of \"\(someString)\"")
            case let (x, y) as (Double, Double):
                println("an (x, y) point at \(x), \(y)")
//            case let movie as Movie:  
//                println("a movie called '\(movie.name)', dir. \(movie.director)")  
            default:
                println("something else")  
            }  
        }
        
        
    }

    @IBAction func goNext(sender: UIButton) {
        
        var cfStr:CFString = "public.png"
        var nsTypeString = cfStr as NSString
        var swiftString:String = nsTypeString as String
        //
        //        var stringPng = public.png as NSString
        //        var swiftString:String = stringPng as String
        if MFMessageComposeViewController.canSendText() &&
            MFMessageComposeViewController.canSendAttachments() &&
            MFMessageComposeViewController.isSupportedAttachmentUTI(swiftString)
        {
            let vc = MFMessageComposeViewController.init()
            vc.messageComposeDelegate = self
            //信息接收者
            vc.recipients = ["10010"]
            vc.body = "send SMS by swift"
            let image = UIImage(named: "image.png")
            let attached = vc.addAttachmentData(UIImagePNGRepresentation(image), typeIdentifier: swiftString, filename: "image.png")
            
            if attached
            {
                println("attached")
            }
            else
            {
                println("not attached")
            }
            
            self.presentViewController(vc, animated: true, completion: { () -> Void in
                
            })
            
            
        }
        

        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func messageComposeViewController(controller: MFMessageComposeViewController!, didFinishWithResult result: MessageComposeResult)
    {
        controller.dismissViewControllerAnimated(true, completion: { () -> Void in
            
        })
    }
//    
//    override  func  preferredStatusBarStyle() -> UIStatusBarStyle {
//        return UIStatusBarStyle.LightContent
//    }


}

