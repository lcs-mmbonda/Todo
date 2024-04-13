//
//  TdoItem.swift
//  To-dolist app finished
//
//  Created by Myers Elliott Mbonda on 2024-04-08.
//

import SwiftData
@Model
class TdoItem: Identifiable {
    
    var title: String
    var done: Bool
    
    init(title: String, done: Bool) {
        self.title = title
        self.done = done
    }
    
    
}
let firstItem = TdoItem(title: "STudy chem", done: false)

let secondItem = TdoItem(title: "do work", done: false)

let thirdItem = TdoItem(title: "eat", done: false)

let exampleItems = [

    firstItem
    ,
    secondItem
    ,
    thirdItem
    ,

]
