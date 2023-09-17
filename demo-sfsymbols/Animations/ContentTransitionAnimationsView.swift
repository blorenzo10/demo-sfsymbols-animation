//
//  ContentTransitionAnimationsView.swift
//  demo-sfsymbols
//
//  Created by Bruno Lorenzo on 17/9/23.
//

import SwiftUI

struct ContentTransitionAnimationsView: View {
    @State private var muteOn = false
    private var buttonTitle: String {
        return muteOn ? "Unmute" : "Mute"
    }
    
    var body: some View {
        VStack {
            Button {
                muteOn.toggle()
            } label: {
                Label(buttonTitle, systemImage: !muteOn ? "speaker.wave.3.fill" : "speaker.slash.fill")
            }
            .contentTransition(.symbolEffect(.replace))
        }
        .font(.largeTitle)
    }
}

#Preview {
    ContentTransitionAnimationsView()
}
