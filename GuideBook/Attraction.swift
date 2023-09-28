//
//  Attraction.swift
//  GuideBook
//
//  Created by Houman Azari on 2023-09-23.
//

import Foundation

struct Attraction: Identifiable, Decodable {
    
    let id = UUID()
    var name: String
    var summary: String
    var longDescription: String
    var imageName: String
    var latLong: String         //when passed to maps, they're passed in a lat , long format
}
