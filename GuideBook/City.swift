//
//  City.swift
//  GuideBook
//
//  Created by Houman Azari on 2023-09-23.
//

import Foundation

struct City: Identifiable, Decodable {
    
    let id = UUID()             //Immutable so it won't be decoded
    var name: String
    var summary: String
    var imageName: String
    var attractions: [Attraction]
}


