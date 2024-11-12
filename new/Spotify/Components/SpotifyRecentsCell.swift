//
//  SpotifyRecentsCell.swift
//  new
//
//  Created by ПМК on 11.11.2024.
//

import SwiftUI

struct SpotifyRecentsCell: View {
    
    var imageName: String = Constants.randomImage
    var title: String = "some random titile"
    
    var body: some View {
        HStack (spacing: 16) {
            ImageLoaderView(urlString: imageName)
                .frame(width: 55, height: 55)
            Text(title)
                .font(.callout)
                .fontWeight(.semibold)
                .lineLimit(2)
        }
        .cornerRadius(6)
        .frame(maxWidth: .infinity, alignment: .leading)
        .themeColors(isSelected: false)
        .padding(.trailing, 6)
    }
}

#Preview {
    SpotifyRecentsCell()
}
