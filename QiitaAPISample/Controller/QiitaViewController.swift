//
//  ViewController.swift
//  QiitaAPISample
//
//  Created by t.koike on 2021/02/07.
//

import Foundation
import UIKit

class QiitaViewController: UIViewController {
    
    @IBOutlet var qiitaTableView: UITableView!
    
    private var cellId = "Cell"
    private var articles: [Article] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        qiitaTableView.dataSource  = self
        
        QiitaModel.fetchArticle { (articles) in
            self.articles = articles
            DispatchQueue.main.async {
                self.qiitaTableView.reloadData()
            }
            
        }
    }

}


extension QiitaViewController: UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return articles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: cellId)
        let article = articles[indexPath.row]
        cell.textLabel?.text = article.title
        cell.detailTextLabel?.text = article.user.id
        return cell
    }
    
    
    
    
}
