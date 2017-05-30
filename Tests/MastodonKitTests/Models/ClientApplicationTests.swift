//
//  ClientApplicationTests.swift
//  MastodonKit
//
//  Created by Ornithologist Coder in 2017.
//  Copyright © 2017 MastodonKit. All rights reserved.
//

import XCTest
@testable import MastodonKit

class ClientApplicationTests: XCTestCase {
    func testClientApplicationFromJSON() {
        let fixture = try? Fixture.load(fileName: "Fixtures/ClientApplication.json")
        let dictionary = fixture as! JSONDictionary
        let application = ClientApplication(from: dictionary)

        XCTAssertEqual(application?.id, 42)
        XCTAssertEqual(application?.redirectURI, "urn:ietf:wg:oauth:2.0:oob")
        XCTAssertEqual(application?.clientID, "very_long_client_id")
        XCTAssertEqual(application?.clientSecret, "very_long_client_secret")
    }
}
