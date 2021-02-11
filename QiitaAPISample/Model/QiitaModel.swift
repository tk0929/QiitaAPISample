//
//  QiitaModel.swift
//  QiitaAPISample
//
//  Created by t.koike on 2021/02/11.
//

import UIKit
import Alamofire

struct QiitaModel {

    static func fetchArticle(completion: @escaping ([Article]) -> Swift.Void) {

        let url = "https://qiita.com/api/v2/items"

        guard var urlComponents = URLComponents(string: url) else {
            return
        }

        urlComponents.queryItems = [
            URLQueryItem(name: "per_page", value: "50"),
        ]

        let task = URLSession.shared.dataTask(with: urlComponents.url!) { data, response, error in

            guard let jsonData = data else {
                return
            }

            do {
                let articles = try JSONDecoder().decode([Article].self, from: jsonData)
                completion(articles)
                print(articles)
            } catch {
                print(error.localizedDescription)
            }
        }
        task.resume()
    }
}
