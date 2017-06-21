//
//  ZLUtilities.swift
//  ZipLookUp
//
//  Created by Rajeshnath Chyarngayil Vishwanath on 31/05/17.
//  Copyright © 2017 Rajeshnath Chyarngayil Vishwanath. All rights reserved.
//

import Foundation

struct SwitchSetting {
    
    enum status {
        case on
        case off
    }
    
    private static let switchState = "state"
    
    static func fetchSetting() -> Bool {
        
        let defaults = UserDefaults.standard
        
        return defaults.bool(forKey: switchState)
        
    }
    
    static func saveSetting(state: Bool) {
        
        let defaults = UserDefaults.standard
        defaults.set(state, forKey: switchState)
        
    }
}

class CaptureObservations {
    
    static let shared = CaptureObservations()
    
    var capturedTime: CapturedTime?
    var capturedData: CapturedData?
    
    private init() {}
}

struct CapturedTime {
    
    let startTime: Date
    let endTime: Date
    
    
    init(start: Date, end: Date ) {
        startTime = start
        endTime = end
    }
    
    var timeInterVal: String {
        
        let stringFromDouble:String = String(format:"%f ms", (endTime.timeIntervalSince(startTime) * 1000))
        
        return stringFromDouble
        
    }
    
}

struct CapturedData {
    
    let dataType: Request.Dataformat
    let data: Data
    var dataSize: String {
        
        let byteCount = data.count
        let bcf = ByteCountFormatter()
        bcf.allowedUnits = [.useMB]
        bcf.countStyle = .file
        let sizeInString = bcf.string(fromByteCount: Int64(byteCount))
        
        return sizeInString
        
    }
    
    var format: String {
        
        switch dataType {
        case .json:
            return "JSON"
            
        case .binary:
            return "BINARY"
            
        }
    }
}
/* if we need interval in seconds */
/*extension TimeInterval {
    
    func format() -> String? {
        let formatter = DateComponentsFormatter()
        formatter.allowedUnits = [.second]
        formatter.unitsStyle = .abbreviated
        formatter.maximumUnitCount = 1
        return formatter.string(from: self)
    }
}
*/


