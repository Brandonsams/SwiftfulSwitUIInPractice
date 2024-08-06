//
//  ContentView.swift
//  SwiftfulSwitUIInPractice
//
//  Created by Brandon Sams on 8/4/24.
//

import SwiftfulRouting
import SwiftUI

struct ContentView: View {
    @Environment(\.router) var router

    var body: some View {
        List {
            Button("Open Spotify") {
                router.showScreen(.fullScreenCover) { _ in
                    SpotifyHomeView()
                }
            }
        }
    }
}

#Preview {
    RouterView { _ in
        ContentView()
    }
}
