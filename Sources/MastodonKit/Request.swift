//
//  Request.swift
//  MastodonKit
//
//  Created by Ornithologist Coder in 2017.
//  Copyright © 2017 MastodonKit. All rights reserved.
//

import Foundation

public struct Request<Model> {
    let path: String
    let method: HTTPMethod
    let parse: (JSONObject) -> Model?

    init(path: String, method: HTTPMethod = .get(.empty), parse: @escaping (JSONObject) -> Model?) {
        self.path = path
        self.method = method
        self.parse = parse
    }
}
