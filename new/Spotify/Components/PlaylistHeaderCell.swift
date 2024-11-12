//
//  PlaylistHeaderCell.swift
//  new
//
//  Created by ПМК on 11.11.2024.
//

import SwiftUI
import SwiftfulUI

struct PlaylistHeaderCell: View {
    var height: CGFloat = 300
    var title: String = "Some playlist title goes here"
    var subtitle: String = "Subtitle goes here"
    var imageName: String = Constants.randomImage
    var shadowColor: Color = .spotifyBlack.opacity(0.8)
    
    var body: some View {
        Rectangle()
            .opacity(0)
            .overlay(ImageLoaderView(urlString: imageName))
            .overlay(
                VStack(alignment: .leading, spacing: 8) {
                    Text(subtitle)
                        .font(.headline)
                    Text(title)
                        .font(.largeTitle)
                }
                    .foregroundColor(.spotifyWhite)
                    .padding(16)
                    .frame(width: .infinity, alignment: .leading)
                    .background(
                        LinearGradient(colors: [shadowColor.opacity(0), shadowColor], startPoint: .top, endPoint: .bottom)
                    )
                    //.background(Color.red.opacity(0.5))
                , alignment: .bottomLeading
            )
            .asStretchyHeader(startingHeight: height)

    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        ScrollView {
            PlaylistHeaderCell()
        }
        .ignoresSafeArea()
    }
}
