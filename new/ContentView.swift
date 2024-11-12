//
//  ContentView.swift
//  new
//
//  Created by ПМК on 11.11.2024.
//

import SwiftUI
import SwiftfulRecursiveUI
import SwiftfulUI
import SwiftfulRouting


struct ContentView: View {
    @Environment(\.router) var router
    
    var body: some View {
        List {
            Button("open spotify") {
                router.showScreen(.fullScreenCover) { _ in
                    SpotifyHomeView()
                }
            }
            Button("open bubmle") {
                router.showScreen(.fullScreenCover) { _ in
                    BumbleHomeView()
                }
            }
        }
    }
}
#Preview {
    RouterView {_ in
        ContentView()
    }
}
