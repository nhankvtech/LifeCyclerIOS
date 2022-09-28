//
//  ViewController.swift
//  LifeCycler
//
//  Created by Khuất Văn Nhân on 27/09/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func btn(_ sender: Any) {
        print("Man Hinh 1 : 666666666")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("Man Hinh 1 : viewDidLoad")
        
        NotificationCenter.default.addObserver(self, selector: #selector(applicationWillResignActive(notification:)), name: UIApplication.willResignActiveNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(applicationDidEnterBackground(notification:)), name: UIApplication.didEnterBackgroundNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(applicationWillEnterForeground(notification:)), name: UIApplication.willEnterForegroundNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(applicationDidBecomeActive(notification:)), name: UIApplication.didBecomeActiveNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(applicationWillTerminate(notification:)), name: UIApplication.willTerminateNotification, object: nil)
    }
    
    @objc public func applicationWillResignActive(notification: NSNotification) {
        print("nkv--> applicationWillResignActive 1")
    }
    
    @objc public func applicationDidEnterBackground(notification: NSNotification) {
        print("nkv--> applicationDidEnterBackground 2")
    }
    
    @objc public func applicationWillEnterForeground(notification: NSNotification) {
        print("nkv--> applicationWillEnterForeground 3")
    }
    
    @objc public func applicationDidBecomeActive(notification: NSNotification) {
        print("nkv--> applicationDidBecomeActive 4")
    }
    
    @objc public func applicationWillTerminate(notification: NSNotification) {
        print("nkv--> applicationWillTerminate 5")
    }

    override func viewWillAppear(_ animated: Bool) {
          print("Man Hinh 1 : viewWillAppear")
      }
      
      override func viewDidAppear(_ animated: Bool) {
          print("Man Hinh 1 : viewDidAppear")
      }
      
      override func viewWillDisappear(_ animated: Bool) {
          print("Man Hinh 1 : viewWillDisappear")
      }
      
      override func viewDidDisappear(_ animated: Bool) {
          print("Man Hinh 1 : viewDidDisappear")
      }
    
    @objc func appMovedToBackground() {
        print("App moved to background!")
    }

    deinit {
        print("App moved to deinit!")
    }
}

