//
//  File.swift
//  TimelineFeed
//
//  Created by Guven Karanfil on 29.09.2021.
//

import Foundation

enum LoadFeedResult {
    case success([FeedItem])
    case error(Error)
}

protocol FeedLoader {
    func load(completion: (LoadFeedResult) -> Void)
}
