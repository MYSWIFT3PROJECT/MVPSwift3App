//
//  ArticlePresentor.swift
//  VMPSwift3App
//
//  Created by iMac on 12/30/16.
//  Copyright © 2016 macOSX. All rights reserved.
//

import Foundation
class ArticlePresentor{
    //Mark:set delegate for presentor protocal
    var delegate: ArticleProtocal?
    //Mark:set service protocal
    var articleService:ArticleService?
    init(){
        //Mark: initalize Article Service
        articleService = ArticleService()
        articleService?.delegate = self
    }
    
}
