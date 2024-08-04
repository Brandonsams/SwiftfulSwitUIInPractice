//
//  SpotifyCategoryCell.swift
//  SwiftfulSwitUIInPractice
//
//  Created by Brandon Sams on 8/4/24.
//

import SwiftUI

struct SpotifyCategoryCell: View {
    var title: String = "All"
    var isSelected: Bool = false

    var body: some View {
        Text(title)
            .font(.callout)
            .frame(minWidth: 35)
            .padding(.vertical, 8)
            .padding(.horizontal, 10)
//            .foregroundStyle(.red)
            .background(isSelected ? .spotifyGreen : .spotifyDarkGray)
            .foregroundStyle(isSelected ? .spotifyBlack : .spotifyWhite)
            .cornerRadius(16)
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        VStack(spacing: 40) {
            SpotifyCategoryCell(title: "title goes here")
            SpotifyCategoryCell(title: "title goes here", isSelected: true)
            SpotifyCategoryCell(isSelected: true)
        }
    }
}
