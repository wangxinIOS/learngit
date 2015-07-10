//
//  TextKitViewController.swift
//  Swift0
//
//  Created by sean on 15/7/6.
//  Copyright (c) 2015年 koudai. All rights reserved.
//
import UIKit
import MessageUI


class TextKitViewController: UIViewController
{
    
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var imageView: UIImageView!
    
    var date:NSDate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Text kit"
        self.automaticallyAdjustsScrollViewInsets = false
        let panGesture = UIPanGestureRecognizer(target: self, action: "imagePanned:")
        self.imageView.addGestureRecognizer(panGesture)
        self.textView.text = "字典是一种存储多个相同类型的值的容器。每个值(value)都关联唯一的键(key)，键作为字典中的这个值数据的标识符。和数组中的数据项不同，字典中的数据项并没有具体顺序。我们在需要通过标识符(键)访问数据的时候使用字典，这种方法很大程度上和我们在现实世界中使用字典查字义的方法一样。Swift 的字典使用时需要具体规定可以存储键和值类型。不同于 Objective-C 的NSDictionary和NSMutableDictionary 类可以使用任何类型的对象来作键和值并且不提供任何关于这些对象的本质信息。在 Swift 中，在某个特定字典中可以存储的键和值必须提前定义清楚，方法是通过显性类型标注或者类型推断。Swift 的字典使用Dictionary<KeyType, ValueType>定义,其中KeyType是字典中键的数据类型，ValueType是字典中对应于这些键所存储值的数据类型。KeyType的唯一限制就是可哈希的，这样可以保证它是独一无二的，所有的 Swift 基本类型(例如String，Int，Double和Bool)都是默认可哈希的，并且所有这些类型都可以在字典中当做键使用。未关联值的枚举成员(参见枚举)也是默认可哈希的。"
        self.textView.textContainer.exclusionPaths = [self.translatedBezierPath()]
        
//        let sheepCount = 71/2.0
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

        
    }

    func imagePanned(sender: AnyObject)
    {
        if view.isKindOfClass(UIPanGestureRecognizer)
        {
            var localSender:UIPanGestureRecognizer = sender as! UIPanGestureRecognizer
            if localSender.state == UIGestureRecognizerState.Began
            {
            }
        }
        
        
    }
    
    func translatedBezierPath() ->UIBezierPath
    {
        
        var butterflyImageRect = self.textView.convertRect(self.imageView.frame, fromView: self.view)
        let newButterflyPath = UIBezierPath(rect: butterflyImageRect)
        return newButterflyPath
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}