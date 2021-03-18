//
//  ArticleModel.swift
//  iMarsUIKit
//
//  Created by Laura on 18/03/2021.
//
import SwiftUI
import Foundation




struct Article : Identifiable{
    var id = UUID()
    let photo : String
    let titre : String
    let source : String
    let date : String
    let contenu : String
    let icone : String
}


let Articles = [
    Article(photo: <#T##String#>, titre: <#T##String#>, source: <#T##String#>, date: <#T##String#>, contenu: <#T##String#>, icone: <#T##String#>)
]
