//
//  ZLServiceRequestManager.swift
//  ZipLookUp
//
//  Created by Rajeshnath Chyarngayil Vishwanath on 23/05/17.
//  Copyright © 2017 Rajeshnath Chyarngayil Vishwanath. All rights reserved.
//

import Foundation

class ServiceRequestManager {
    
    let session: URLSession
    
    static var shared: ServiceRequestManager {
        return ServiceRequestManager()
    }
    
    private init() {
        session = URLSession.shared
    }
    
    static func selectedFormat() -> Request.Dataformat {
        
        let state: Bool = SwitchSetting.fetchSetting()
        
        switch state {
        case true:
            return .binary
            
        case false:
            return .json
        }
        
    }
    
    /* making the network service call */
    func execute(request: Request,completionHandler: @escaping (Result<Data>) -> Void) {
        
        do {
            let urlRequest: URLRequest =  try self.constructHeadersFor(request, withSelectedFormat: ServiceRequestManager.selectedFormat())
            let startTime = Date()
            
            session.dataTask(with: urlRequest) {
                (data, response, error) -> Void in
                
                if let error = error {
                    completionHandler(.error("\(error.localizedDescription)"))
                    return
                }
                
                //If response is nil then return an error message
                guard let responseData = response,
                    let httpResponse = responseData as? HTTPURLResponse ,
                    httpResponse.statusCode == ResponseCode.successCode.rawValue,
                    let receivedData = data else {
                        completionHandler(.error(NSLocalizedString("No Data", comment: "Problem in receiving data")))
                        return
                }
                
                let endTime = Date()
                
                self.recordObservations(startTime: startTime, endTime: endTime, dataFormat: ServiceRequestManager.selectedFormat(), receivedData: receivedData)
                
                completionHandler(.success(receivedData))
                
                }.resume()
            
        } catch {
            completionHandler(.error("\(error.localizedDescription)"))
            print(error.localizedDescription)
        }
        
    }
    
    /* record the time and format */
    
    func recordObservations(startTime: Date, endTime: Date , dataFormat: Request.Dataformat, receivedData: Data) {
        
        let capturedTime = CapturedTime(start: startTime, end: endTime)
        let capturedData = CapturedData(dataType: dataFormat, data: receivedData)
        
        CaptureObservations.shared.capturedTime = capturedTime
        CaptureObservations.shared.capturedData = capturedData
        
    }
    
    /* construct the http header fields */
    
    func constructHeadersFor(_ request: Request, withSelectedFormat format: Request.Dataformat) throws -> URLRequest {
        
        var urlRequest = URLRequest(url: URL(string: request.path)!)
        urlRequest.httpMethod = request.method
        
        switch format {
            
        case .json:
            
            urlRequest.addValue(ContentTypeValues.json, forHTTPHeaderField:  HTTPHeaderFieldKey.contentType)
            urlRequest.addValue(ContentTypeValues.json, forHTTPHeaderField: HTTPHeaderFieldKey.accept)
            
        case .binary:
            
            urlRequest.addValue(ContentTypeValues.octet, forHTTPHeaderField: HTTPHeaderFieldKey.contentType)
            urlRequest.addValue(ContentTypeValues.octet, forHTTPHeaderField: HTTPHeaderFieldKey.accept)
        }
        
        do {
            let jsonData = try JSONSerialization.data(withJSONObject: request.postbody, options: [])
            urlRequest.httpBody = jsonData
            
        } catch {
            throw error
        }
        
        return urlRequest
        
    }
}


