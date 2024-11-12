//
//  BumbleHomeView.swift
//  new
//
//  Created by ПМК on 12.11.2024.
//

import SwiftUI

struct BumbleHomeView: View {
    var body: some View {
        ZStack {
            Color.bumbleWhite.ignoresSafeArea()
            
            VStack(spacing: 8) {
                HStack(spacing: 0) {
                    HStack(spacing: 0) {
                        Image(systemName: "line.horizontal.3")
                            .padding(8)
                            .background(Color.black .opacity(0.001))
                            .onTapGesture {
                                
                            
                            }
                        Image(systemName: "line.horizontal.3")
                            .padding(8)
                            .background(Color.black .opacity(0.001))
                            .onTapGesture {
                                
                            
                            }
                    }
                    
                }
            }
        }
    }
}

#Preview {
    BumbleHomeView()
}
