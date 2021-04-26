//
//  SelectionVC.swift
//  Notifications-Observers
//
//  Created by Kevin Tran on 10/17/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit

class SelectionVC: UIViewController {

    //MARK: - Properties
    @IBOutlet weak var chooseSideLabel: UIButton!
    @IBOutlet weak var autobotsBtn: UIButton!
    @IBOutlet weak var decepticonsBtn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.lightGray
    }
    
    //MARK: - Actions
    @IBAction func autobotsBtnPress(_ sender: UIButton) {
        //2.
        let name = Notification.Name(rawValue: autobotNotificationKey)
        NotificationCenter.default.post(name: name, object: nil)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func decepticonsBtnPress(_ sender: UIButton) {
        let name = Notification.Name(rawValue: decepticonNotificationKey)
        NotificationCenter.default.post(name: name, object: nil)
        dismiss(animated: true, completion: nil)
    }
}

//Creating Notification
//1. Create Unique identifier key for notifications as global variables
//2. Notifications to post with specific NOTIFICATION NAME (what the observers are listening for), on an action. "send out notification message when button is tapped"
//3. Helpful to put the notification names into a variable, as they'll be reused repeately
//4. Best practice to remove observers when no longer necessary, will clear when view is deallocated (deinit method)

//Create Observers
//5. Create (multiple)observers in seperate function for notifications (one to many relationship) - one notification for many observers waiting to each make changes. (Observers listening for the notification name)
//6. Each observer will execute a selected function

