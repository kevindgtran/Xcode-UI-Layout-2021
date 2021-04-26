//
//  ViewController.swift
//  ScrollViewLesson
//
//  Created by Kevin Tran on 3/15/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var imageView: UIImageView!
    var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    imageView = UIImageView(image: UIImage(named: "background"))
    scrollView = UIScrollView(frame: view.bounds)
    
    scrollView.backgroundColor = .black
    scrollView.contentSize = imageView.bounds.size
    scrollView.addSubview(imageView)
    view.addSubview(scrollView)
}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

