//
//  ImageLoaderView.swift
//  SwiftfulSwitUIInPractice
//
//  Created by Brandon Sams on 8/4/24.
//

import SDWebImageSwiftUI
import SwiftUI

struct ImageLoaderView: View {
    var urlString: String = ""
    var resizingMode: ContentMode = .fill

    var body: some View {
        Rectangle()
            .opacity(0.001)
            .overlay(WebImage(url: URL(string: urlString))
                .resizable()
                .indicator(.activity)
                .aspectRatio(contentMode: .fill)
                .allowsHitTesting(/*@START_MENU_TOKEN@*/false/*@END_MENU_TOKEN@*/)
            )
            .clipped()
    }
}

#Preview {
    ImageLoaderView(urlString: Constants.randomImage)
        .cornerRadius(30)
        .padding(40)
        .padding(.vertical, 60)
}
