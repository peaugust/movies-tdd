//
//  APIRepository.swift
//  movies-tdd
//
//  Created by Jungle Devs on 03/01/22.
//

import Foundation

class Movie: Codable {
    let title: String
    let detail: String
}

class APIRepository {
    var session: URLSession!
    
    func getMovies(completion: @escaping ([Movie]?, Error?) -> Void) {}
}
