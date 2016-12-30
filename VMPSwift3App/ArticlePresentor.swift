//
//  ArticlePresentor.swift
//  VMPSwift3App
//
//  Created by iMac on 12/30/16.
//  Copyright © 2016 macOSX. All rights reserved.
//

import Foundation
class ArticlePresentor : ArticleSeriveProtocal{
    //Mark:set delegate for presentor protocal
    var delegate: ArticlePresentorProtocal?
    
    //Mark:set service protocal
    var articleService:ArticleService?
    
    init(){
        articleService = ArticleService()
        articleService?.delegate = self
    }
    func getData(page:Int,limit:Int){
        articleService?.fectchData(page: page, limit: limit)
    }
    
    func resposeDataFromGet(article: [Article]) {
        
    }
    
}
