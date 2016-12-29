//
//  Pagination.swift
//  VMPSwift3App
//
//  Created by macOSX on 12/29/16.
//  Copyright © 2016 macOSX. All rights reserved.
//

import Foundation
class Pagination{
    private init(){}
    //MarK: Shared Instance
    static let sharedInstance : Pagination = Pagination()
    //Mark Local Variable
    var totalPage:Int  = 0
    var currentPage: Int = 0
}
