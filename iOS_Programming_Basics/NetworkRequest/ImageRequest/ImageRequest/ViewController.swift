//
//  ViewController.swift
//  ImageRequest
//
//  Created by Jarrod Parkes on 11/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import UIKit

// MARK: - ViewController: UIViewController

class ViewController: UIViewController {

    // MARK: Outlets
    
    @IBOutlet weak var imageView: UIImageView!
    
    // MARK: Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //setup a network request to retrieve an image and populate the imageView property
        
        //setup the URL class
        let url = URL(string: "http://img00.deviantart.net/e20c/i/2013/012/a/4/cute_cat_by_reasondinn-d5r8hde.jpg")
        
        //setup the URLSessionDataTask class
        let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
            
            if error == nil {
                let downloadedImage = UIImage(data: data!)
                
                //perform UI updates on main
                performUIUpdatesOnMain {
                    self.imageView.image = downloadedImage
                }
                
            }
        }
        
        //start URLSessionDataTask
        task.resume()
    }
}


