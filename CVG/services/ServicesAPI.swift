//
//  ServicesAPI.swift
//  CVG
//
//  Created by Carlos Vázquez Gómez on 7/5/17.
//  Copyright © 2017 Carlos Vázquez Gómez. All rights reserved.
//

import Foundation
import Alamofire

typealias requestCompletionHandler = (Any?, Error) -> Void

class ServicesAPI: NSObject {
    
    static let sharedInstance = ServicesAPI()
    fileprivate var isGrantRequired: Bool?
    fileprivate let oauthPathUrl = "oauth/token/"
    fileprivate let accountsPathUrl = "v1/accounts/"
    
    fileprivate func defaultRequest(url: String, method: HTTPMethod, token: String) -> URLRequest {
        var urlRequest = URLRequest(url: URL(string: url)!)
        urlRequest.httpMethod = method.rawValue
        urlRequest.setValue("application/json", forHTTPHeaderField: "Accept")
        urlRequest.setValue("Bearer " + token, forHTTPHeaderField: "Authorization")
        
        return urlRequest
    }
    
    fileprivate func tokenRequest(url: String, parameters:[String:String]) -> URLRequest {
        var urlRequest = URLRequest(url: URL(string: url)!)
        urlRequest.httpMethod = HTTPMethod.post.rawValue
        urlRequest.setValue("application/json", forHTTPHeaderField: "Accept")
        urlRequest.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        urlRequest.httpBody = try! JSONSerialization.data(withJSONObject: parameters)
        
        return urlRequest
    }
    
    fileprivate func mockedParameters() -> [String: String] {
        var parameters = [String: String]()
        parameters["grant_type"] = "client_credentials"
        parameters["client_id"] = CVGUtils.clientId
        parameters["client_secret"] = CVGUtils.secretKey
        return parameters
    }
    
    func clientCredentialsRequest(completion: @escaping requestCompletionHandler) {
        let url = CVGUtils.baseUrl + oauthPathUrl
        let request = tokenRequest(url: url, parameters: mockedParameters())
        
        Alamofire.request(request).responseData { (response) in
            if response.data != nil {
                
            }
            else {
            }
        }
    }
    
    func accountsRequest(completion: @escaping requestCompletionHandler) {
        let url = CVGUtils.baseUrl + accountsPathUrl
        let request = defaultRequest(url: url, method: .get, token: "vqKz0wZrNqJF2UI9CQ9MZazqNUqP4H")
        Alamofire.request(request).responseData { (response) in
            if response.data != nil {
            }
        }
    }
    
    
}
