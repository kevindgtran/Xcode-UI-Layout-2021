//
//  ViewController.swift
//  CameraClassLesson
//
//  Created by Kevin Tran on 3/28/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    //make button, button action
    //link AVFoundation library, import AVFoundation
    //AVCapture line #23
    //edit plist - add error and it'll autopopulate
    //make the ViewController conform to the correct delegates #47
    
    @IBOutlet weak var cameraButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        AVCaptureDevice.requestAccess(forMediaType: AVMediaTypeVideo) {(authorized) in
            print("my camera is authorized: true")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func cameraButtonPress(_ sender: UIButton) {
        //CHALLENGE - click button, choose photo library or use camera
        
        // Declare the Image Picker
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.allowsEditing = true
        
        // Declare the Alert Buttons
        let cameraAction = UIAlertAction(title: "Camera", style: .default) { (_) in
            imagePicker.sourceType = .camera
            imagePicker.cameraCaptureMode = .photo
            self.present(imagePicker, animated: true, completion: nil)
        }
        
        let photoLibrary = UIAlertAction(title: "Photo Library", style: .default) { (_) in
            imagePicker.sourceType = .photoLibrary
            self.present(imagePicker, animated: true, completion: nil)
        }
        
        let cancel = UIAlertAction(title: "Cancel", style: .default) { (_) in
            self.dismiss(animated: true, completion: nil)
        }
        
        let alertController = UIAlertController(title: "test", message: "", preferredStyle: .actionSheet)
        // Add actions
        alertController.addAction(cameraAction)
        alertController.addAction(photoLibrary)
        alertController.addAction(cancel)
        // Present Alert Controller
        present(alertController, animated: true, completion: nil)
    }
}

extension ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
   
        //how to take pictures
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        picker.dismiss(animated: true, completion: nil)
        if let image = info[UIImagePickerControllerEditedImage] as? UIImage {
            print(image)
        }
    }
}
