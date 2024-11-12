//
//  ImageTittleRowCell.swift
//  new
//
//  Created by ПМК on 11.11.2024.
//

import SwiftUI

struct ImageTittleRowCell: View {
    var imageSize: CGFloat = 100
    var imageName: String = Constants.randomImage
    var title: String = "some title"
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 8) {
            ImageLoaderView(urlString: imageName)
                .frame(width: imageSize, height: imageSize)
            Text(title)
                .font(.callout)
                .foregroundStyle(.spotifyLightGray)
                .lineLimit(2)
                .padding(4)
        }
        .frame(width: imageSize)
    }
}
#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        ImageTittleRowCell()
    }
}
