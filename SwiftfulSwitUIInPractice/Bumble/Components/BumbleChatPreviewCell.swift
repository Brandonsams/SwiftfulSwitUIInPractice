//
//  BumbleChatPreviewCell.swift
//  SwiftfulSwitUIInPractice
//
//  Created by Brandon Sams on 8/10/24.
//

import SwiftUI

struct BumbleChatPreviewCell: View {
    var imageName: String = Constants.randomImage
    var percentageRemaining: Double = .random(in: 0 ... 1)
    var hasNewMessage: Bool = false
    var userName: String = "Nick"
    var lastMessage: String? = "Heyyyyyyy, how are you doing? Tell more more about yourself"
    var isYourMove: Bool = true

    var body: some View {
        HStack(spacing: 16) {
            BumbleProfileImageCell(
                imageName: imageName,
                percentageRemaining: percentageRemaining,
                hasNewMessage: hasNewMessage
            )
            VStack(alignment: .leading, spacing: 2) {
                HStack(spacing: 0) {
                    Text(userName)
                        .font(.headline)
                        .foregroundStyle(.bumbleBlack)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    if isYourMove {
                        HStack {
                            Text("YOUR MOVE")
                                .font(.caption2)
                                .bold()
                                .padding(.vertical, 4)
                                .padding(.horizontal, 6)
                                .background(.bumbleYellow)
                                .cornerRadius(32)
                        }
                    }
                }
                if let lastMessage {
                    Text(lastMessage)
                        .font(.subheadline)
                        .foregroundStyle(.bumbleGrey)
                        .padding(.trailing, 16)
                }
            }
            .lineLimit(1)
        }
    }
}

#Preview {
    VStack {
        BumbleChatPreviewCell()
        BumbleChatPreviewCell(userName: "Jane", isYourMove: false)
        BumbleChatPreviewCell(userName: "William Bartholomew Montgomery III")
    }
    .padding()
}
