//
//  TodayItem.swift
//  App Store
//
//  Created by Nikhi on 15/11/20.
//

import Foundation

struct TodayItem: Identifiable {
    var id = UUID().uuidString
    var title: String
    var category: String
    var overlay: String
    var contentImage: String
    var logo: String
}

var items = [
    TodayItem(title: "Forza Street", category: "Ultimate Street Racing Game", overlay: "GAME OF THE DAY", contentImage: "b1", logo: "l1"),
             
    TodayItem(title: "Roblox", category: "Adventure", overlay: "Lil Nas X Performs In Roblox", contentImage: "b2", logo: "l2")
]
