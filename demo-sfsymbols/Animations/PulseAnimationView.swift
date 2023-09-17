//
//  PulseAnimationView.swift
//  demo-sfsymbols
//
//  Created by Bruno Lorenzo on 10/9/23.
//

import SwiftUI

struct PulseAnimationView: View {
    
    @State private var isAnimationActive = false
    @State private var animationCount = 0
    private var animationButtonTitle: String {
        return isAnimationActive ? "Stop" : "Animate"
    }
    
    var body: some View {
        ScrollView {
            VStack {
                Text("Indefinite")
                    .font(.system(size: 22, weight: .bold))
                    .multilineTextAlignment(.center)
                HStack {
                    Image(systemName: "speaker.wave.3.fill")
                        .resizable()
                        .frame(width: 70, height: 50)
                        .symbolEffect(
                            .pulse.wholeSymbol,
                            options: .speed(1.5),
                            isActive: isAnimationActive
                        )
                    Button(animationButtonTitle) {
                        withAnimation {
                            isAnimationActive.toggle()
                        }
                    }
                    .padding(.leading, 32)
                }
                .padding(.bottom, 32)
                
                Text("Discrete")
                    .font(.system(size: 22, weight: .bold))
                    .multilineTextAlignment(.center)
                HStack {
                    Image(systemName: "speaker.wave.3.fill")
                        .resizable()
                        .frame(width: 70, height: 50)
                        .symbolEffect(
                            .pulse.wholeSymbol,
                            options: .speed(1.5),
                            value: animationCount
                        )
                    Button("Animate") { animationCount += 1 }
                        .padding(.leading, 32)
                }
            }
            .padding(.bottom, 32)
        }
        .padding(.top, 32)
    }
}

#Preview {
    PulseAnimationView()
}
