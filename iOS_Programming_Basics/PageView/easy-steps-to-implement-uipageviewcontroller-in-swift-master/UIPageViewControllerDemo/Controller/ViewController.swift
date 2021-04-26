//
//  ViewController.swift
//  UIPageViewControllerDemo
//
//  Created by Niks on 21/12/15.
//  Copyright © 2015 TheAppGuruz. All rights reserved.
//

import UIKit





class ViewController: UIPageViewController, UIPageViewControllerDataSource
{
    var arrPageTitle: NSArray = NSArray()
    var arrPagePhoto: NSArray = NSArray()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrPageTitle = ["Donuts!", "One Donut!", "Donuts for everyone!"];
        arrPagePhoto = ["logo.png", "oneChocolateDonut.jpeg", "DonutCollection.jpg"];
        
        self.dataSource = self
        
        self.setViewControllers([getViewControllerAtIndex(0)] as [UIViewController], direction: UIPageViewControllerNavigationDirection.forward, animated: false, completion: nil)
    }

// MARK:- UIPageViewControllerDataSource Methods
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController?
    {
        let pageContent: PageContentViewController = viewController as! PageContentViewController
        
        var index = pageContent.pageIndex
        
        if ((index == 0) || (index == NSNotFound))
        {
            return nil
        }
        
        index -= 1;
        return getViewControllerAtIndex(index)
    }

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController?
    {
        let pageContent: PageContentViewController = viewController as! PageContentViewController
        
        var index = pageContent.pageIndex
        
        if (index == NSNotFound)
        {
            return nil;
        }
        
        index += 1;
        if (index == arrPageTitle.count)
        {
            return nil;
        }
        return getViewControllerAtIndex(index)
    }

// MARK:- Other Methods
    func getViewControllerAtIndex(_ index: NSInteger) -> PageContentViewController
    {
        // Create a new view controller and pass suitable data.
        let pageContentViewController = self.storyboard?.instantiateViewController(withIdentifier: "PageContentViewController") as! PageContentViewController

        pageContentViewController.strTitle = "\(arrPageTitle[index])"
        pageContentViewController.strPhotoName = "\(arrPagePhoto[index])"
        pageContentViewController.pageIndex = index
        
        return pageContentViewController
    }
}

