//
//  ViewController.swift
//  BengCall-CloudKit
//
//  Created by Muhammad Arif Setyo Aji on 20/05/20.
//  Copyright © 2020 Muhammad Arif Setyo Aji. All rights reserved.
//

import UIKit
import CloudKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var motorTypeTF: UITextField!
    @IBOutlet weak var licenseNumberTF: UITextField!
    @IBOutlet weak var autoshopNameTF: UITextField!
    
    var customerName = String()
    var motorType = String()
    var licenceNumber = String()
    var autoshopName = String()
    
    //let Helper = CloudKitHelper()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }

    
    @IBAction func bookingButtonPressed(_ sender: Any) {
        
        customerName = nameTF.text ?? ""
        motorType = motorTypeTF.text ?? ""
        licenceNumber = licenseNumberTF.text ?? ""
        autoshopName = autoshopNameTF.text ?? ""
        
        // Save Data
        //Helper.saveBooking(name: customerName, motorType: motorType, licenseNumber: licenceNumber, autoshopName: autoshopName)
        
    }
    
    
    
}

