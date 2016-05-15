//
//  ViewController.swift
//  LaunchNotification
//
//  Created by Toshiaki Nakamura on 2016/05/15.
//  Copyright © 2016年 Toshiaki Nakamura. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 通知センターを作成する
        let notificationCenter = NSNotificationCenter.defaultCenter()
        
        // 通知センターでアプリの状況を監視する（アプリが起動したときに処理を実行する場合）
        notificationCenter.addObserver(self,
                                       selector: #selector(ViewController.launchMethod), // この処理を実行する
            name: UIApplicationDidFinishLaunchingNotification, // アプリが起動したときを指定する
            object: nil)
        
        // 通知センターでアプリの状況を監視する（アプリがアクティブになったときに処理を実行する場合）
        /*
         notificationCenter.addObserver(self,
         selector: #selector(ViewController.launchMethod), // この処理を実行する
         name: UIApplicationDidBecomeActiveNotification, // アプリがアクティブになったときを指定する
         object: nil)
         */
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // 通知を受けて呼び出される処理
    func launchMethod() {
        print("呼ばれたよ")
    }
}

