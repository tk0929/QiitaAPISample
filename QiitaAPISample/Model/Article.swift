//
//  QiitaStruct.swift
//  QiitaAPISample
//
//  Created by t.koike on 2021/02/07.
//

import Foundation

struct Article: Codable{
    
    var title: String
    var user: User
    
    struct User: Codable {
        var id: String
        
    }
    
}
