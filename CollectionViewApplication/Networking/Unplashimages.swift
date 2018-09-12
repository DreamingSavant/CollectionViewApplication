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

enum URLS: String, Codable {
    case raw, full, regular, small, thumb
}
