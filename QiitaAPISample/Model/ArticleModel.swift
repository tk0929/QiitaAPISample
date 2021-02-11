//
//  QiitaStruct.swift
//  QiitaAPISample
//
//  Created by t.koike on 2021/02/07.
//

import Foundation

struct ArticleModel: Codable {
    
    var title: String
    var user: User
    
    struct User: Codable {
        
        var id: String
        var iconUrl: String
        
        enum CodingKeys: String, CodingKey {
            case id = "id"
            case iconUrl = "profile_image_url"
        }
    }
    
    var url: String
    var tags: [Tag]
    
    struct Tag: Codable {
        var name: String
    }
    
}
