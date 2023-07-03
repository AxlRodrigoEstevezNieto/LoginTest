//
//  GetBatery.swift
//  LoginTest
//
//  Created by aestevezn on 02/07/23.
//

import UIKit
import FirebaseFirestore

class GetBatery {
    
    private var batery = 0.0
    private var nameDevice = ""
    private let db = Firestore.firestore()
    
    func getBateryDevice() {
        let device = UIDevice.current
        device.isBatteryMonitoringEnabled = true
        
        if device.batteryState == .unknown {
            self.batery = -1.0
        } else {
            self.batery =  Double(device.batteryLevel * 100)
        }
    }
    
    func getNameDevice() {
        let device = UIDevice.current
        self.nameDevice = device.name
    }
    
    func saveData(){
        getNameDevice()
        getBateryDevice()
        db.collection("devices").document(nameDevice).setData(
            [
                "Name Device" : self.nameDevice,
                "Batery level": self.batery
            ]
        )
    }
}
