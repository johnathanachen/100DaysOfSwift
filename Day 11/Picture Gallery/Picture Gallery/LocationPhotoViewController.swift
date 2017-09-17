//
//  ViewController.swift
//  Picture Gallery
//
//  Created by Johnathan Chen on 9/11/17.
//  Copyright © 2017 JCSwifty. All rights reserved.
//

import UIKit
import CoreLocation
import CoreData

class LocationPhotoViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, CLLocationManagerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        textView.inputAccessoryView = toolbar
        textView.becomeFirstResponder()
        locationManager.delegate = self
        loadCurrentDateAndTime()
    }

    // MARK: - Outlets
    @IBOutlet var toolbar: UIView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var selectedImageView: UIImageView!
    
    // MARK: - Interactions
    @IBAction func tapDoneButton(_ sender: UIBarButtonItem) {
        saveEntry()
    }
    @IBAction func tapCameraButton(_ sender: UIButton) {
        launchCameraRoll()
    }
    @IBAction func tapLocationButton(_ sender: UIButton) {
        getLocation()
    }
    
    // MARK: - Core Data
    func saveEntry() {
        
        if textView.text.characters.count > 0 {
            
            // lets us access core data
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            let context = appDelegate.persistentContainer.viewContext
            let entries = NSEntityDescription.insertNewObject(forEntityName: "Entries", into: context) as! Entries
            
            // pass values to core data
            entries.entry = textView.text
            entries.date = currentDate as NSDate?
            
            if let locationText = locationLabel.text {
                entries.location = locationText
            }
            
            if let selectedImage = selectedImageView.image {
                entries.image = UIImageJPEGRepresentation(selectedImage, 0.75) as NSData?
            }
            
            // save to Core Data
            appDelegate.saveContext()
        }
        
        let _ = navigationController?.popToRootViewController(animated: true)
        
        // Core Data Path
//        let path = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
//        print("Core Data Path:\n \(path)")

    }
    
    // MARK: - Camera Roll
    func launchCameraRoll() {
        let imagePicker = UIImagePickerController()
        present(imagePicker, animated: true, completion: nil)
        imagePicker.delegate = self
    }
    
    // MARK: UIImagePickerControllerDelegate
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        selectedImageView.image = info[UIImagePickerControllerOriginalImage] as! UIImage?
        dismiss(animated: true, completion: nil)
        textView.becomeFirstResponder()
    }
    
    // MARK: - Location
    let locationManager = CLLocationManager()
    
    // MARK: Location Functions
    func getLocation() {
        locationManager.requestWhenInUseAuthorization()
        locationManager.desiredAccuracy = kCLLocationAccuracyKilometer
        locationManager.startUpdatingLocation()
    }
    
    // MARK: CLLocation Manager Delegate
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        locationManager.stopUpdatingLocation()
        let geocoder = CLGeocoder()
        
        geocoder.reverseGeocodeLocation(manager.location!) { (placemarks, error) in
            if let placemarksData = placemarks {
                let locationData = placemarksData[0]
                // San Francisco, CA zip, United States
                let city = locationData.locality!
                let state = locationData.administrativeArea!
                let zipCode = locationData.postalCode!
                let country = locationData.isoCountryCode!
                let location = "\(city), \(state), \(zipCode), \(country)"
                
                self.locationLabel.text = location
            } else {
                print("Error: \(error?.localizedDescription)")
            }
        }
    }
    
    // MARK: - Date and Time
    var currentDate: Date?
    func loadCurrentDateAndTime() {
        currentDate = Date()
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMMM d, YYYY 'at' h:mm a"
        
        dateLabel.text = dateFormatter.string(from: currentDate!)
    }


}
