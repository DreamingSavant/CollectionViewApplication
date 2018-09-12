//
//  Unplashimages.swift
//  CollectionViewApplication
//
//  Created by Roderick Presswood on 9/11/18.
//  Copyright © 2018 Roderick Presswood. All rights reserved.
//

import Foundation

typealias Photos = [Photo]

struct Photo: Codable {
    let id: String
    let urls: URLS
}

struct URLS: Codable {
    let raw: URL
    let full: URL
    let regular: URL
    let small: URL
    let thumb: URL
}
