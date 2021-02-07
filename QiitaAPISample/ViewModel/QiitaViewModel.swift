//
//  QiitaViewModel.swift
//  QiitaAPISample
//
//  Created by t.koike on 2021/02/07.
//
import Foundation
import UIKit

class QiitaViewModel {
    
    static func fetchArticle(completion: @escaping ([QiitaStruct]) -> Swift.Void) {
        
        let url = "https://qiita.com/api/v2/items"
        guard var urlComponents = URLComponents(string: url) else { return }
        urlComponents.queryItems = [
            URLQueryItem(name: "per_page", value: "50")
        ]
        
    }
    
    
}
