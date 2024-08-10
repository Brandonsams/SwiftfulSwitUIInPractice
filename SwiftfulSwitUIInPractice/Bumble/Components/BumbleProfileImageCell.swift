//
//  BumbleProfileImageCell.swift
//  SwiftfulSwitUIInPractice
//
//  Created by Brandon Sams on 8/10/24.
//

import SwiftUI

struct BumbleProfileImageCell: View {
    var imageName: String = Constants.randomImage
    var percentageRemaining: Double = .random(in: 0 ... 1)
    var hasNewMessage: Bool = true

    var body: some View {
        ZStack {
            Circle()
                .stroke(.bumbleGrey, lineWidth: 2)
            Circle()
                .trim(
                    from: 1.0 - percentageRemaining,
                    to: 1.0
                )
                .stroke(.bumbleYellow, lineWidth: 4)
                .rotationEffect(.degrees(270))
            ImageLoaderView(urlString: imageName)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .padding(5)
        }
        .frame(width: 75, height: 75)
        .overlay(
            ZStack {
                if hasNewMessage {
                    Circle()
                        .fill(.bumbleWhite)
                    Circle()
                        .fill(.bumbleYellow)
                        .padding(4)
                }
            }
            .frame(width: 24, height: 24)
            .offset(x: 2, y: 2),
            alignment: .bottomTrailing
        )
    }
}

#Preview {
    VStack {
        BumbleProfileImageCell()
        BumbleProfileImageCell(percentageRemaining: 0.3)
        BumbleProfileImageCell(hasNewMessage: false)
    }
}
