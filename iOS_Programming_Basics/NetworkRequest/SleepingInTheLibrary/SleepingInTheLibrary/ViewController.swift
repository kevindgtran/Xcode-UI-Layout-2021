//
//  ViewController.swift
//  SleepingInTheLibrary
//
//  Created by Jarrod Parkes on 11/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import UIKit

// MARK: - ViewController: UIViewController

class ViewController: UIViewController {

    // MARK: Outlets
    
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var photoTitleLabel: UILabel!
    @IBOutlet weak var grabImageButton: UIButton!

    
    // MARK: Actions
    
    @IBAction func grabNewImage(_ sender: AnyObject) {
        setUIEnabled(false)
        getImageFromFlickr()
    }

    
    // MARK: Configure UI
    
    private func setUIEnabled(_ enabled: Bool) {
        photoTitleLabel.isEnabled = enabled
        grabImageButton.isEnabled = enabled
        
        if enabled {
            grabImageButton.alpha = 1.0
        } else {
            grabImageButton.alpha = 0.5
        }
    }
    
    // MARK: Make Network Request
    
    private func getImageFromFlickr() {
        
       //create our method parameters
        let methodParameters = [
            Constants.FlickrParameterKeys.Method: Constants.FlickrParameterValues.GalleryPhotosMethod,
            Constants.FlickrParameterKeys.APIKey: Constants.FlickrParameterValues.APIKey,
            Constants.FlickrParameterKeys.GalleryID: Constants.FlickrParameterValues.GalleryID,
            Constants.FlickrParameterKeys.Extras: Constants.FlickrParameterValues.MediumURL,
            Constants.FlickrParameterKeys.Format: Constants.FlickrParameterValues.ResponseFormat,
            Constants.FlickrParameterKeys.NoJSONCallback: Constants.FlickrParameterValues.DisableJSONCallback
        ]
    
    //create URL (use URLRequest for additional URLRequest options)
    let urlString = Constants.Flickr.APIBaseURL + escapedParameters(methodParameters as [String:AnyObject])
    let url = URL(string: urlString)!
    let urlRequest = URLRequest(url: url)
    
    //create URLSession task
    let task = URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
        if error == nil {
            //check that URLSession is returning JSON data == bytes
            //print(data!)
            
            // if an error occurs, print it and re-enable the UI
            func displayError(_ error: String) {
                print(error)
                print("URL at time of error: \(url)")
                performUIUpdatesOnMain {
                    self.setUIEnabled(true)
                }
            }
            
            //Serialize JSON Data into swift objects
            guard let data = data else {
                print("unable to serialize JSON Data")
                return
            }
            
            let parsedResult: AnyObject!
            
            do {
                parsedResult = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as AnyObject
            } catch {
                displayError("error serializing json data")
                return
            }
            //check that JSONSerialization is returning objects == {objects, dictionaries}
            //print(parsedResult)
            
                //PARSE JSON (top down approach)
                guard let photosDictionary = parsedResult["photos"] as? [String: AnyObject] else {
                    displayError("error parsing photosDictionary")
                    return
                }
                //check that the "photos" dictionary returns
                //print(photosDictionary)
            
                guard let photoArray = photosDictionary["photo"] as? [[String: AnyObject]] else {
                    displayError("error parsing photoArray")
                    return
                }
                //check that the photoArray returns
                //print(photoArray[0])
            
                //generate random image on user click
                let randomPhotoIndex = Int(arc4random_uniform(UInt32(photoArray.count)))
                let randomPhotoDictionary = photoArray[randomPhotoIndex] as [String: AnyObject]
            
                guard let imageURLString = randomPhotoDictionary["url_m"] as? String else {
                    displayError("unable to parse imageURLString")
                    return
                }
            
                guard let imageTitleString = randomPhotoDictionary["title"] as? String else {
                    displayError("unable to parse imageTitleString")
                    return
                }
                //check that the image url and title are parsing correctly
                //print(imageURLString)
                //print(imageTitleString)
            
                //create an image from parsed URL string
                guard let imageURL = URL(string: imageURLString) else {
                    displayError("error converting urlString into URL class")
                    return
                }
            
                if let imageURLData = try? Data(contentsOf: imageURL) {
                    performUIUpdatesOnMain {
                        self.photoImageView.image = UIImage(data: imageURLData)
                        self.photoTitleLabel.text = imageTitleString
                        self.setUIEnabled(true)
                    }
                }
        }
    }
        
    //start URLSession Task
    task.resume()
    
    }//end of getImageFromFlickr()
    
    // MARK: Helper for Escaping Parameters in URL
    private func escapedParameters(_ parameters: [String:AnyObject]) -> String {
        
        if parameters.isEmpty {
            return ""
        } else {
            var keyValuePairs = [String]()
            
            for (key, value) in parameters {
                
                // make sure that it is a string value
                let stringValue = "\(value)"
                
                // escape it
                let escapedValue = stringValue.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
                
                // append it
                keyValuePairs.append(key + "=" + "\(escapedValue!)")
                
            }
            
            return "?\(keyValuePairs.joined(separator: "&"))"
        }
    }
    
}//end of UIViewController
