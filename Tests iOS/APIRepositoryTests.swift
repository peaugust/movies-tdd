//
//  APIRepositoryTests.swift
//  Tests iOS
//
//  Created by Jungle Devs on 03/01/22.
//

import XCTest
@testable import movies_tdd


class APIRepositoryTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testGetMoviesWithExpectedURLHostAndPath() {
        let apiRespository = APIRepository()
        let mockURLSession = MockURLSession()
        apiRespository.session = mockURLSession
        apiRespository.getMovies { movies, error in }
        XCTAssertEqual(mockURLSession.cachedUrl?.host, "mymovieslist.com")
        XCTAssertEqual(mockURLSession.cachedUrl?.path, "/topmovies")
    }
    
    

}
