//
//  TdoItem.swift
//  To-dolist app finished
//
//  Created by Myers Elliott Mbonda on 2024-04-08.
//

import Foundation

struct TdoItem: Identifiable {
    let id = UUID()
    var title: String
    var done: Bool
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
