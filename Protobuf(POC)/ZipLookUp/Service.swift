//
//  ServiceLayer.swift
//  ZipLookUp
//
//  Created by Rajeshnath Chyarngayil Vishwanath on 23/05/17.
//  Copyright © 2017 Rajeshnath Chyarngayil Vishwanath. All rights reserved.
//

import Foundation


struct Service {
    
    static func getAllZipCodeInfo(onCompletion: @escaping(Result<Places>)-> Void) {
        
        ServiceRequestManager.shared.processAPIRequest(forRouter: ZipRouter.getAllZipInfo) { (response) in
            
            switch(response) {
                
            case .success(let data):
                
                print(data)
                
                do {
                    switch (ServiceRequestManager.selectedFormat()) {
                        
                    case .json:
                        
                        let places =  try Places(jsonUTF8Data: data)
                        onCompletion(.success(places))
                        
                    case .binary:
                        
                        let places =  try Places(serializedData: data)
                        onCompletion(.success(places))
                        
                    }
                    
                } catch {
                    print(error)
                }
                
            case .error(let errorString):
                
                print(errorString)
                
                onCompletion(.error(errorString))
                
            }
        }
    }
}


enum ZipRouter {
    
    case getAllZipInfo
    
    
    
    
    var postbody : [String: Any] {
        
        let bodyDict: [String: Any] = [:]
        
        switch self {
            
        case .getAllZipInfo:
            
            return bodyDict
            
        }
        
        
    }
    
    
    var path: String {
        
        switch self {
            
        case .getAllZipInfo:
            
            return ServiceEndPoints.baseUrl + "/" + Routes.allZipInfo
            
        }
        
    }
    
    private var httpMethod: HTTPMethod  {
        
        switch self {
        case .getAllZipInfo:
            return .POST
        }
        
    }
    
    var method: String {
        
        return self.httpMethod.rawValue
        
    }
    
    private enum HTTPMethod: String {
        
        case GET    = "GET"
        case POST   = "Post"
        case PUT    = "PUT"
        case DELETE = "DELETE"
        
    }
    
    enum Dataformat {
        case json
        case binary
    }    
    
}




