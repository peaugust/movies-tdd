//
//  MockURLSession.swift
//  movies-tdd
//
//  Created by Jungle Devs on 03/01/22.
//

import Foundation


class MockURLSession: URLSession {
    var cachedUrl: URL?
    
    override func dataTask(with url: URL, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
        self.cachedUrl = url
        return URLSessionDataTask()
    }
}
