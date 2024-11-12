//
//  BumbleChartsView.swift
//  new
//
//  Created by ПМК on 12.11.2024.
//

import SwiftUI
import SwiftfulRouting

struct BumbleChartsView: View {
    @Environment(\.router) var router

    @State private var allUsers: [User] = []
    
    var body: some View {
        ZStack {
            Color.bumbleWhite.ignoresSafeArea()
           // matchQueueSection
            VStack(spacing: 0) {
                header
                    .padding(16)
                matchQueueSection
                recentChatsSection
                
            }
        }
        .task {
            await getData()
        }
        .toolbar(.hidden, for: .navigationBar)
    }
    
    private func getData() async {
        guard allUsers.isEmpty else { return }
        
        do {
            allUsers = try await DatabaseHelper().getUsers()
        } catch {
            
        }
        
    }
    private var header: some View {
        HStack(spacing: 0) {
            Image(systemName: "line.horizontal.3")
                .onTapGesture {
                    router.dismissScreen()
                }
            Spacer(minLength: 0)
            Image(systemName: "magnifyingglass")
        }
        .font(.title)
        .fontWeight(.medium)
        
    }
    private var matchQueueSection: some View {
        VStack(spacing: 0) { 
            VStack(alignment: .leading, spacing: 8) {
                Group {
                    Text("Match Queue")
                    +
                    Text(" (\(allUsers.count))")
                        .foregroundColor(.bumbleGray)
                }
                .padding(.leading, 16)
                
                ScrollView(.horizontal) {
                    LazyHStack(spacing: 16) {
                        ForEach(allUsers){ user in
                            BumbleProfileImageCell(
                                imageName: user.image,
                                percentageRemaining: Double.random(in: 0...1),
                                hasNewMessage: Bool.random()
                            )
                            
                        }
                    }
                    .padding(.leading, 16)
                }
                .scrollIndicators(.hidden)
                .frame(height: 100)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
    private var recentChatsSection: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Group {
                    Text("Chats")
                    +
                    Text(" (Recent)")
                        .foregroundColor(.bumbleGray)
                }
                Spacer(minLength: 0)
                Image(systemName: "line.horizontal.3.decrease")
                    .font(.title2)
            }
            .padding(.horizontal, 16)
            
            ScrollView(.vertical) {
                LazyVStack(spacing: 16) {
                    ForEach(allUsers){ user in
                        BumbleChatPreviewCell(
                            imageName: user.images.randomElement()!,
                            percentageRemaining: Double.random(in: 0...1),
                            hasNewMessage: Bool.random(),
                            userName: user.firstName,
                            lastChatMessage: user.aboutMe,
                            isYourMove: Bool.random()
                        )
                        
                    }
                }
                .padding(.horizontal, 16)
            }
            .scrollIndicators(.hidden)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    BumbleChartsView()
}
