//
//  BaseVC.swift
//  Notifications-Observers
//
//  Created by Kevin Tran on 10/17/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit

//1.
let autobotNotificationKey = "autobotNotificationKey"
let decepticonNotificationKey = "decepticonNotificationKey"

class BaseVC: UIViewController {

    //MARK: - Properties
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var sideChosen: UILabel!
    @IBOutlet weak var pickSideBtn: UIButton!
    
    //3.
    let autobotsNotificationName = Notification.Name(rawValue: autobotNotificationKey)
    let decepticonNotificationName = Notification.Name(rawValue: decepticonNotificationKey)
    
    //4.
    deinit {
        NotificationCenter.default.removeObserver(self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
            view.backgroundColor = UIColor.black
            pickSideBtn.backgroundColor = UIColor.gray
            pickSideBtn.layer.cornerRadius = 8
            pickSideBtn.layer.borderWidth = 2
            pickSideBtn.layer.borderColor = UIColor.white.cgColor
            observers() //call observers
    }
    
    func observers(){
        //5.
        //autobot observers
        NotificationCenter.default.addObserver(self, selector: #selector(BaseVC.updateImage(notification:)), name: autobotsNotificationName, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(BaseVC.updateBackgroundColor(notification:)), name: NSNotification.Name(rawValue: autobotNotificationKey), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(BaseVC.updateLabel(notification:)), name: NSNotification.Name(rawValue: autobotNotificationKey), object: nil)

        //decepticon observers
        NotificationCenter.default.addObserver(self, selector: #selector(BaseVC.updateImage(notification:)), name: decepticonNotificationName, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(BaseVC.updateBackgroundColor(notification:)), name: decepticonNotificationName, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(BaseVC.updateLabel(notification:)), name: decepticonNotificationName, object: nil)
    }
    
    //6.
    @objc func updateImage(notification: NSNotification) {
        //if notification name is autobotNotificationName, update image with optimus, else update image with megatron
        if notification.name == autobotsNotificationName {
            img.image = UIImage(named: "optimus")!
        } else {
            img.image = UIImage(named: "megatron")!
        }
    }
    
    @objc func updateBackgroundColor(notification: NSNotification) {
        if notification.name == autobotsNotificationName {
            view.backgroundColor = UIColor.blue
        } else {
            view.backgroundColor = UIColor.red
        }
    }
    
    @objc func updateLabel(notification: NSNotification) {
        if notification.name == autobotsNotificationName {
            sideChosen.text = "Optimus Prime"
        } else {
            sideChosen.text = "Megatron"
        }
    }
    
    //MARK: - Actions
    @IBAction func pickSideBtnPress(_ sender: UIButton) {
        let selectionView = storyboard?.instantiateViewController(withIdentifier: "SelectionVC") as! SelectionVC
        present(selectionView, animated: true, completion: nil)
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





