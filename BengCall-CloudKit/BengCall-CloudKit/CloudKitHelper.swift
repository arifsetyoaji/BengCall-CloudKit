//
//  CloudKitHelper.swift
//  BengCall-CloudKit
//
//  Created by Muhammad Arif Setyo Aji on 20/05/20.
//  Copyright © 2020 Muhammad Arif Setyo Aji. All rights reserved.
//

import Foundation
import CloudKit


struct CloudKitHelper {
    
    var container: CKContainer
    var database: CKDatabase
    
//    init() {
//
//        container = CKContainer.init(identifier: "iCloud.com.setiawanjoddy.IntroductionToCK") // Tolong Diganti
//        database = container.publicCloudDatabase
//    }
    
    func saveBooking(name: String, motorType: String, licenseNumber: String, autoshopName: String){
        
        let booking = CKRecord(recordType: "Booking")
        booking["customerName"] = name
        booking["motorType"] = motorType
        booking["licenseNumber"] = licenseNumber
        booking["autoshopName"] = autoshopName
        
        
        // Save Data
        database.save(booking) { (record, error) in
            
            print(error!)
            
        }
        
    }
    
    
    func fetchAll (onCompleted: @escaping ([CKRecord]) -> Void) {
        let predicate = NSPredicate(value: true)
        let query = CKQuery(recordType: "Booking", predicate: predicate)
        
        database.perform(query, inZoneWith: nil) { (records, error) in
            onCompleted(records!)
        }
    }
    
    
    
}
