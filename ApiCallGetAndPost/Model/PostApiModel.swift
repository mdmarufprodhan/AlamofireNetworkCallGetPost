//
//  PostApiModel.swift
//  ApiCallGetAndPost
//
//  Created by Md Maruf Prodhan on 11/9/22.
//

import Foundation

struct PostModelElement: Codable {
    let userID, id: Int
    let title, body: String

    enum CodingKeys: String, CodingKey {
        case userID = "userId"
        case id, title, body
    }
    
}

struct PostModelResponse: Codable {
    let userID : String
    let id: Int
    let title : String

    enum CodingKeys: String, CodingKey {
        case userID = "userId"
        case id, title
    }
    
}
