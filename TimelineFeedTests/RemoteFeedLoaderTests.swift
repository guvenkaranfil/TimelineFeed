//
//  TimelineFeedTests.swift
//  TimelineFeedTests
//
//  Created by Guven Karanfil on 29.09.2021.
//

import XCTest

class RemoteFeedLoader {
    let client: HTTPClient
    
    init(client: HTTPClient) {
        self.client = client
    }
    
    func load() {
    }
}

protocol HTTPClient {
    func get(from url: URL)
}

class TimelineFeedTests: XCTestCase {

    func test_init_doesNotRequestData() {
        let client = HTTPClientSpy()
        _ = RemoteFeedLoader(client: client)
        
        XCTAssertNil(client.requestedURL)
    }
    
    // MARK - Helpers
    
    class HTTPClientSpy: HTTPClient {
        var requestedURL: URL?
        
        func get(from url: URL) {
            requestedURL = url
        }
    }
}
