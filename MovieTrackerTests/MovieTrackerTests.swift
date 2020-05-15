//
//  MovieTrackerTests.swift
//  MovieTrackerTests
//
//  Created by Agha Ali on 12/5/20.
//  Copyright © 2020 Agha Ali. All rights reserved.
//

import XCTest
@testable import MovieTracker

class MovieTrackerTests: XCTestCase {

    //MARK: Movie Class Tests
    
    // Confirm that the Movie initializer returns a Movie object when passed valid parameters.
    func testMovieInitializationSucceeds() {
        // Zero rating
        let zeroRatingMovie = Movie.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMovie)
        
        // Highest positive rating
        let positiveRatingMovie = Movie.init(name: "Positive", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingMovie)
    }
    
    // Confirm that the Movie initializer returns nil when passed a negative rating or an empty name.
    func testMealInitializationFails() {
        // Negative rating
        let negativeRatingMovie = Movie.init(name: "Negative", photo: nil, rating: -1)
        XCTAssertNil(negativeRatingMovie)
        
        // Rating exceeds maximum
        let largeRatingMeal = Movie.init(name: "Large", photo: nil, rating: 6)
        XCTAssertNil(largeRatingMeal)
        
        // Empty String
        let emptyStringMovie = Movie.init(name: "", photo: nil, rating: 0)
        XCTAssertNil(emptyStringMovie)
    }

}
