//
//  DetailViewModel.swift
//  App Store
//
//  Created by Nikhi on 15/11/20.
//

import Foundation


class DetailViewModel: ObservableObject {
    @Published var selectedItem = TodayItem(title: "", category: "", overlay: "", contentImage: "", logo: "")
    @Published var show = false
    
}
