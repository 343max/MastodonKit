//
//  ApplicationTests.swift
//  MastodonKit
//
//  Created by Ornithologist Coder in 2017.
//  Copyright © 2017 MastodonKit. All rights reserved.
//

import XCTest
@testable import MastodonKit

class ApplicationTests: XCTestCase {
    func testApplicationFromJSON() {
        let fixture = try? Fixture.load(fileName: "Fixtures/Application.json")
        let dictionary = fixture as! JSONDictionary
        let application = Application(from: dictionary)

        XCTAssertEqual(application?.name, "MastodonKitTestClient")
        XCTAssertEqual(application?.website, "https://github.com/ornithocoder/MastodonKit")
    }

    func testApplicationWithInvalidData() {
        let application = Application(from: [:])

        XCTAssertNil(application)
    }
}
