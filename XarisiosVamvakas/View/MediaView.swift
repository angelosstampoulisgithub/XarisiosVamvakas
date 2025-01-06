//
//  MediaView.swift
//  XarisiosVamvakas
//
//  Created by Angelos Staboulis on 7/1/25.
//

import SwiftUI

struct MediaView: View {
    @State private var amount = 0.0
    let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    var body: some View {
        ZStack(alignment: .center) {
                    ProgressView("Loading…", value: amount, total: 50)
                        .onReceive(timer) { _ in
                            if amount < 50 {
                                amount += 2
                            }
                    }.opacity(amount < 50 ? 1 : 0.0)
                    .progressViewStyle(.circular)
                    
        }.background {
                    WebVideo(urlVideo:
                                "https://www.youtube.com/embed/EYIfP-3CfBU").frame(width:600,height:780)
        }
    }
}

#Preview {
    MediaView()
}

