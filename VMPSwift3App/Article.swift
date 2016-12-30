//
//  Article.swift
//  VMPSwift3App
//
//  Created by macOSX on 12/29/16.
//  Copyright © 2016 macOSX. All rights reserved.
//

import Foundation
import SwiftyJSON
class Article {
    var id:Int?
    var title:String?
    var description:String?
    var image:String?
    init() {
        self.id = 0
        self.title = ""
        self.description = ""
        self.image = ""
    }
    init(jsonArticle: JSON) {
        self.id = jsonArticle["ID"].int
        self.title = jsonArticle["TITLE"].string
        self.description = jsonArticle["DESCRIPTION"].string
        self.image = jsonArticle["IMAGE"].string
    }
    
}
