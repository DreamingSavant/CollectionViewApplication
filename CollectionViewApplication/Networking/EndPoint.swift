//
//  EndPoint.swift
//  CollectionViewApplication
//
//  Created by Roderick Presswood on 9/11/18.
//  Copyright © 2018 Roderick Presswood. All rights reserved.
//

import Foundation

protocol Endpoint {
    var baseUrl: String { get }
    var path: String { get }
    var urlParameters: [URLQueryItem] { get }
}

extension Endpoint {
    var urlComponent: URLComponents {
        var urlComponent = URLComponents(string: baseUrl)
        urlComponent?.path = path
        urlComponent?.queryItems = urlParameters
        
        return urlComponent!
    }
    
    var request: URLRequest {
        return URLRequest(url: urlComponent.url!)
    }
}

enum Order: String {
    case popular, latest, oldest
}


enum UnsplashEndpoint: Endpoint {
    case photos(id: String, order: Order)
    
    var baseUrl: String {
        return UnsplashClient.baseUrl
    }
    
    var path: String {
        switch self {
        case .photos:
            return "/photos"
        }
}

    var urlParameters: [URLQueryItem] {
        switch self {
        case .photos(let id, let order):
            return [
                URLQueryItem(name: "client_id", value: id),
                URLQueryItem(name: "order_by", value: order.rawValue)
            ]
        }
}
}
