//
//  UnSplashClient.swift
//  CollectionViewApplication
//
//  Created by Roderick Presswood on 9/11/18.
//  Copyright © 2018 Roderick Presswood. All rights reserved.
//

import Foundation

class UnsplashClient: APIClient {
    static let baseUrl = "https://api.unsplash.com"
    static let apiKey = "a1b7dea1893a44f0c2e294d5cb9642e2de4cced284172b1b3e1fd82fd764cdbe"
    
    func fetch(with endpoint: UnsplashEndpoint, completion: @escaping (Either<Photos>) -> Void) {
        let request = endpoint.request
        get(with: request, completion: completion)
    }
}
