//
//  TodayCard.swift
//  App Store
//
//  Created by Nikhi on 15/11/20.
//

import SwiftUI

struct TodayCard: View {
    
    @Environment(\.colorScheme) var color
    var animation: Namespace.ID
    
    var item: TodayItem
    
    var body: some View {
        VStack {
            Image(item.contentImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .matchedGeometryEffect(id: item.contentImage, in: animation)
                .frame(width: UIScreen.main.bounds.width - 30, height: 250)
            
            HStack {
                Image(item.logo)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 65, height: 65)
                    .cornerRadius(15)
                
                VStack(alignment: .leading, spacing: 6) {
                    Text(item.title)
                        .fontWeight(.bold)
                    Text(item.category)
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                
                Spacer(minLength: 0)
                
                VStack {
                    
                    Button {
                        
                    } label: {
                        Text("GET")
                            .fontWeight(.bold)
                            .padding(.vertical, 10)
                            .padding(.horizontal, 15)
                            .background(Color.primary.opacity(0.1))
                            .clipShape(Capsule())
                    }
                    
                    Text("In-App Purchases")
                        .font(.caption)
                        .foregroundColor(.gray)

                }
            }
            .matchedGeometryEffect(id: item.id, in: animation)
            .padding()
            
           
        }
        .background(color == .dark ? Color.black : Color.white)
        .cornerRadius(15)
        .padding([.top, .horizontal])
    }
}

