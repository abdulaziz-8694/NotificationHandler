//
//  ViewController.swift
//  NotificationHandle
//
//  Created by Abdul Aziz on 11/08/16.
//  Copyright © 2016 Abdul Aziz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var type : UIUserNotificationType!
    var settings : UIUserNotificationSettings!
    //MARK: Properties
    @IBOutlet weak var triggerNotification: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        type = UIUserNotificationType.Alert
        settings = UIUserNotificationSettings(forTypes: [.Alert,.Badge,.Sound], categories: nil)
        UIApplication.sharedApplication().registerUserNotificationSettings(settings)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: Actions
    @IBAction func triggerNotification(sender: UIButton) {
            print("Triggereing notification")
            let notification: UILocalNotification! = UILocalNotification()
            notification.fireDate = NSDate(timeIntervalSinceNow: 10)
            notification.alertBody = "Notification Triggered"
            notification.alertTitle = "Notification"
            UIApplication.sharedApplication().scheduleLocalNotification(notification)
    }
   

}

