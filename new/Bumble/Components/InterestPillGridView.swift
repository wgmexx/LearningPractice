//
//  InterestPillGridView.swift
//  new
//
//  Created by ПМК on 12.11.2024.
//

import SwiftUI
import SwiftfulUI

struct UserInterest: Identifiable {
    let id = UUID().uuidString
    var iconName: String? = nil
    var emoji: String? = nil
    var text: String
}
struct InterestPillGridView: View {
    var interests: [UserInterest] = User.mock.interest
    
    var body: some View {
        ZStack{
            NonLazyVGrid(columns: 2,  alignment: .leading, spacing: 8, items: interests) { interest in
                if let interest {
                    InterestPillView(
                        iconName: interest.iconName,
                        emoji: interest.emoji,
                        text: interest.text
                    )
                } else {
                    EmptyView()
                }
            }
        }
    }
}

#Preview {
    
    InterestPillGridView(interests: User.mock.interest)
    InterestPillGridView(interests: User.mock.basics)
}
