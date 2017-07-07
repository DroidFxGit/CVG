//
//  ClientCredential.swift
//  CVG
//
//  Created by Carlos Vázquez Gómez on 7/6/17.
//  Copyright © 2017 Carlos Vázquez Gómez. All rights reserved.
//

import Foundation
import Unbox

struct ClientCredential {
    let accessToken: String
    let tokenType: String
    let expires: Double
    let scope: String
}

extension ClientCredential: Unboxable {
    init(unboxer: Unboxer) throws {
        accessToken = try unboxer.unbox(key: "access_token")
        tokenType = try unboxer.unbox(key: "token_type")
        expires = try unboxer.unbox(key: "expires_in")
        scope = try unboxer.unbox(key: "scope")
    }
}
