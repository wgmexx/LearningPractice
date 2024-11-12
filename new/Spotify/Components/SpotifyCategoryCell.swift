//
//  SpotifyCategoryCell.swift
//  new
//
//  Created by ПМК on 11.11.2024.
//

import SwiftUI

struct SpotifyCategoryCell: View {
    var title: String = "Music"
    var isSelected: Bool = false
    
    var body: some View {
        Text(title)
        
            .font(.callout)
            .frame(minWidth: 35)
            .padding(.vertical, 8)
            .padding(.horizontal, 10)
            .themeColors(isSelected: isSelected)
            .cornerRadius(16)
    }
}
extension View {
    func themeColors(isSelected: Bool) -> some View {
        self
        .background(isSelected ? .spotifyGreen : .spotifyDarkGray)
        .foregroundStyle(isSelected ? .spotifyBlack : .spotifyWhite)
    }
    
}
#Preview {
    SpotifyCategoryCell()
}
