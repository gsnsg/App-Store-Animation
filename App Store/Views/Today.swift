//
//  Today.swift
//  App Store
//
//  Created by Nikhi on 15/11/20.
//

import SwiftUI

struct Today: View {
    @EnvironmentObject var detailObject: DetailViewModel
    
    var animation: Namespace.ID
    
    var body: some View {
        ScrollView {
            
            VStack {
                HStack(alignment: .bottom) {
                    
                    VStack(alignment: .leading, spacing: 5) {
                        Text("SUNDAY 15 NOVEMBER")
                            .foregroundColor(.gray)
                        
                        Text("Today")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                    }
                    Spacer()
                    Button {
                        
                    } label: {
                        Image(systemName: "person.circle")
                            .font(.largeTitle)
                            
                    }

                }
                .padding()
                
                ForEach(items) { item in
                    TodayCard(animation: animation, item: item)
                        .onTapGesture {
                            withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.8, blendDuration: 0.8)) {
                                detailObject.selectedItem = item
                                detailObject.show.toggle()
                            }
                        }
                    
                }
            }
            .padding(.bottom)
        }.background(Color.primary.opacity(0.06).ignoresSafeArea())
    }
}

