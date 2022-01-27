//
//  FruitModel.swift
//  Fructus
//
//  Created by david on 15/12/2021.
//

import SwiftUI

//Fruit Data Model

struct Fruit: Identifiable{
    var id = UUID()
    var title:String
    var headline:String
    var image:String
    var gradientColors:[Color]
    var description:String
    var nutrition:[String]
}
