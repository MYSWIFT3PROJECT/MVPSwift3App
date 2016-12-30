//
//  ArticleService.swift
//  VMPSwift3App
//
//  Created by macOSX on 12/29/16.
//  Copyright © 2016 macOSX. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON
class ArticleService{
    //ArticlePrtocal delegate Object
    var delegate: ArticleProtocal?
    //get Data function
    func fectchData(page:Int, limit:Int){
        Alamofire.request("http://120.136.24.174:1301/v1/api/articles?page=\(page)(&limit=\(limit)",method:.get).responseJSON{
            (response) in
            //Mark: Maping pagination with API
            let jsonResponse =  JSON(data: response.data!)
            var pagination = jsonResponse["PAGINATION"].dictionary
            Pagination.sharedInstance.totalPage = (pagination?["TOTAL_PAGES"]?.int!)!
            Pagination.sharedInstance.currentPage = (pagination?["PAGE"]?.int!)!
            var articles = [Article]()
            for article in jsonResponse["DATA"].array!{
                articles.append(Article(jsonArticle: article))
            }
             //Mark add data to ArticleServiceProtocol's delegate
          self.delegate?.resposeDataFromGet(article: articles)
        }
    }
    
    
}
