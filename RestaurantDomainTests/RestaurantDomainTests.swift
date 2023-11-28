//
//  RestaurantDomainTests.swift
//  RestaurantDomainTests
//
//  Created by Wagner Rodrigues on 27/11/23.
//

import XCTest
@testable import RestaurantDomain

final class RestaurantDomainTests: XCTestCase {

    func test_initializer_remoteRestaurantLoader_and_validate_urlRequest() throws {
        let anyURL = try XCTUnwrap(URL(string: "https://comitando.com.br"))
        let sut = RemoteRestaurantLoader(url: anyURL)
        
        sut.load()
        
        XCTAssert((NetworkClient.shared.urlRequest != nil))
    }
}
