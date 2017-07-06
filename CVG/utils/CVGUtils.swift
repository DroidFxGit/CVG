//
//  CVGUtils.swift
//  CVG
//
//  Created by Carlos Vázquez Gómez on 7/5/17.
//  Copyright © 2017 Carlos Vázquez Gómez. All rights reserved.
//

import Foundation

struct CVGUtils {
    
    enum Dictionarykeys: String {
        case client_id
        case client_secret
        case sandbox_url
        case application_token
    }
    
    fileprivate static var dictionary: NSDictionary? = {
        if let path = Bundle.main.path(forResource: "credentials", ofType: "plist"), let dict = NSDictionary(contentsOfFile: path) as? [String: AnyObject] {
            return dict as NSDictionary
        }
        else { return [:] }
    }()
    
    fileprivate static func value(from key: Dictionarykeys) -> String {
        guard let dict = dictionary else { return ""}
        return dict[key.rawValue] as! String
    }
    
    static var clientId: String = {
        return value(from: .client_id)
    }()
    
    static var secretKey: String = {
        return value(from: .client_secret)
    }()
    
    static var baseUrl: String = {
        return value(from: .sandbox_url)
    }()
    
    static var newRelicToken: String = {
        return value(from: .application_token)
    }()
}
