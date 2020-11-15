//
//  TabBar.swift
//  App Store
//
//  Created by Nikhi on 15/11/20.
//

import SwiftUI

struct TabBar: View {
    @Namespace var animation
    @StateObject var detailObject = DetailViewModel()
    var body: some View {
        ZStack {
            TabView {
                Today(animation: animation)
                    .environmentObject(detailObject)
                    .tabItem {
                        Image(systemName: "newspaper")
                        Text("Today")
                    }
                
                Text("Games")
                    .tabItem {
                        Image("rocket").renderingMode(.template)
                        Text("Games")
                    }
                
                Text("Arcade")
                    .tabItem {
                        Image(systemName: "square.stack.3d.up.fill")
                        Text("Arcade")
                    }
                
                
                Text("Search")
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
                
                
            
            }
            .opacity(detailObject.show ? 0 : 1)
            
            if detailObject.show {
                DetailView(detail: detailObject, animation: animation)
            }
            
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
