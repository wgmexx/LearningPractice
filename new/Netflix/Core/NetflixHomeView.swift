//
//  NetflixHomeView.swift
//  new
//
//  Created by ПМК on 12.11.2024.
//

import SwiftUI

struct NetflixHomeView: View {
    var body: some View {
        ZStack{
            Color.netflixBlack.ignoresSafeArea()
            
            VStack(spacing: 0){
                HStack(spacing: 0){
                    Text("For you")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.title)
                    HStack(spacing: 16)  {
                        Image(systemName: "tv.badge.wifi")
                            .onTapGesture {
                            
                        }
                        
                        Image(systemName: "magnifyingglass")
                            .onTapGesture {
                            
                        }
                    }
                    .font(.title2)
                }
                
            }
        }
        .foregroundColor(.netflixWhite)
    }
}

#Preview {
    NetflixHomeView()
}
