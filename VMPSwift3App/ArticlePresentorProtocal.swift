//
//  ArticlePresentorProtocal.swift
//  VMPSwift3App
//
//  Created by iMac on 12/30/16.
//  Copyright © 2016 macOSX. All rights reserved.
//

import Foundation
protocol ArticlePresentorProtocal:class{
    
    func responseDataFromGet(article:[Article])
    
}
extension ArticlePresentorProtocal{
    //Optional
    func responseDataFromGet(article:[Article]){}
}
