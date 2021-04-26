//
//  TutorialPageViewController.swift
//  UIPageViewController_Tutorial
//
//  Created by Kevin Tran on 3/27/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit

class TutorialPageViewController: UIPageViewController {

    //https://spin.atomicobject.com/2015/12/23/swift-uipageviewcontroller-tutorial/
    //1. delete default views, add Page View Controller to storyboard, add subclass
    //2. create additional pages, add storyboard ID's
    //3. Code -
    

        weak var tutorialDelegate: TutorialPageViewControllerDelegate?
        
        private(set) lazy var orderedViewControllers: [UIViewController] = {
            // The view controllers will be shown in this order
            return [self.newColoredViewController(color: "Green"),
                    self.newColoredViewController(color: "Red"),
                    self.newColoredViewController(color: "Blue")]
        }()
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            dataSource = self
            delegate = self
            
            if let initialViewController = orderedViewControllers.first {
                scrollToViewController(initialViewController)
            }
            
            tutorialDelegate?.tutorialPageViewController(self,
                                                         didUpdatePageCount: orderedViewControllers.count)
        }
    
        /**
         Scrolls to the next view controller.
         */
        func scrollToNextViewController() {
            if let visibleViewController = viewControllers?.first,
                let nextViewController = pageViewController(self,
                                                            viewControllerAfterViewController: visibleViewController) {
                scrollToViewController(nextViewController)
            }
        }
        
        /**
         Scrolls to the view controller at the given index. Automatically calculates
         the direction.
         
         - parameter newIndex: the new index to scroll to
         */
        func scrollToViewController(index newIndex: Int) {
            if let firstViewController = viewControllers?.first,
                let currentIndex = orderedViewControllers.index(of: firstViewController) {
                let direction: UIPageViewControllerNavigationDirection = newIndex >= currentIndex ? .forward : .reverse
                let nextViewController = orderedViewControllers[newIndex]
                scrollToViewController(viewController: nextViewController, direction: direction)
            }
        }
        
        private func newColoredViewController(color: String) -> UIViewController {
            return UIStoryboard(name: "Main", bundle: nil) .
                instantiateViewController(withIdentifier: "\(color)ViewController")
        }
        
        /**
         Scrolls to the given 'viewController' page.
         
         - parameter viewController: the view controller to show.
         */
        private func scrollToViewController(viewController: UIViewController,
                                            direction: UIPageViewControllerNavigationDirection = .forward) {
            setViewControllers([viewController],
                               direction: direction,
                               animated: true,
                               completion: { (finished) -> Void in
                                // Setting the view controller programmatically does not fire
                                // any delegate methods, so we have to manually notify the
                                // 'tutorialDelegate' of the new index.
                                self.notifyTutorialDelegateOfNewIndex()
            })
        }
        
        /**
         Notifies '_tutorialDelegate' that the current page index was updated.
         */
        private func notifyTutorialDelegateOfNewIndex() {
            if let firstViewController = viewControllers?.first,
                let index = orderedViewControllers.index(of: firstViewController) {
                tutorialDelegate?.tutorialPageViewController(self,
                                                             didUpdatePageIndex: index)
            }
        }
        
    }
    
    // MARK: UIPageViewControllerDataSource
    extension TutorialPageViewController: UIPageViewControllerDataSource {
        
        func pageViewController(_ pageViewController: UIPageViewController,
                                viewControllerAfter viewController: UIViewController) -> UIViewController? {
            guard let viewControllerIndex = orderedViewControllers.index(of: viewController) else {
                return nil
            }
            
            let previousIndex = viewControllerIndex - 1
            
            // User is on the first view controller and swiped left to loop to
            // the last view controller.
            guard previousIndex >= 0 else {
                return orderedViewControllers.last
            }
            
            guard orderedViewControllers.count > previousIndex else {
                return nil
            }
            
            return orderedViewControllers[previousIndex]
        }
        
        func pageViewController(pageViewController: UIPageViewController,
                                viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
            guard let viewControllerIndex = orderedViewControllers.index(of: viewController) else {
                return nil
            }
            
            let nextIndex = viewControllerIndex + 1
            let orderedViewControllersCount = orderedViewControllers.count
            
            // User is on the last view controller and swiped right to loop to
            // the first view controller.
            guard orderedViewControllersCount != nextIndex else {
                return orderedViewControllers.first
            }
            
            guard orderedViewControllersCount > nextIndex else {
                return nil
            }
            
            return orderedViewControllers[nextIndex]
        }
        
    }
    
    extension TutorialPageViewController: UIPageViewControllerDelegate {
        
        func pageViewController(pageViewController: UIPageViewController,
                                didFinishAnimating finished: Bool,
                                previousViewControllers: [UIViewController],
                                transitionCompleted completed: Bool) {
            notifyTutorialDelegateOfNewIndex()
        }
        
    }
    
    protocol TutorialPageViewControllerDelegate: class {
        
        /**
         Called when the number of pages is updated.
         
         - parameter tutorialPageViewController: the TutorialPageViewController instance
         - parameter count: the total number of pages.
         */
        func tutorialPageViewController(tutorialPageViewController: TutorialPageViewController,
                                        didUpdatePageCount count: Int)
        
        /**
         Called when the current index is updated.
         
         - parameter tutorialPageViewController: the TutorialPageViewController instance
         - parameter index: the index of the currently visible page.
         */
        func tutorialPageViewController(tutorialPageViewController: TutorialPageViewController,
                                        didUpdatePageIndex index: Int)
        
}
