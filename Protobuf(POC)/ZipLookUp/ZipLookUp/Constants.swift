//
//  ZLConstants.swift
//  ZipLookUp
//
//  Created by Rajeshnath Chyarngayil Vishwanath on 23/05/17.
//  Copyright © 2017 Rajeshnath Chyarngayil Vishwanath. All rights reserved.
//

import Foundation

//typealias SerializedData = Data

enum Result<T>{
    case success(T)
    case error(String)
}



//let ZipLookUpBaseUrl: String = "http://10.1.3.101:8086"
//Remote URL
/*
enum ZLErrorMessage: String {
    case errorAlertTitle = "Whoops!"
    case serverError = "Server is not reachable!"
    case status = "status"
    case errorMessage = "errorMessage"
    case errorDataResponse = "someError"
    case loginFailMessage = "Username and Password does not match"
    case properCredentials = "Please provide EXILANT credentials"
    case noDataMessage = "Please try after some time"
    case dataCovertionErrorMessage = "Problem in converting JSON data"
    case alert = "Alert"
    case noHistoryMessage = "No History"
}
*/

// MARK:- Response  constants
enum ResponseCode: Int {
    
    case resourceNotFoundCode = 404
    case successCode = 200
}


struct ServiceEndPoints {
    static let baseUrl = "http://10.1.3.14:8086"
}

struct Routes {
    static let allZipInfo = "v1/zipInfo"
}

struct HTTPHeaderFieldKey {
    
    static let contentType = "Content-Type"
    static let accept = "Accept"
    static let authorization = "Authorization"
    static let AcceptEncoding = "Accept-encoding"
    static let Cookie = "Cookie"
}

struct ContentTypeValues {
    
    static let json: String = "application/json"
    static let octet: String = "application/octet-stream"
    
}

struct CellIdentifiers {
    
    static let ZipInfo = "ZipInfoCellIdentifier"
    static let Reports = "ReportsCellIdentifier"
}










