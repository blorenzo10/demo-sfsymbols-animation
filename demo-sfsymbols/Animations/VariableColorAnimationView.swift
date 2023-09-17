//
//  VariableColorAnimationView.swift
//  demo-sfsymbols
//
//  Created by Bruno Lorenzo on 10/9/23.
//

import SwiftUI

struct VariableColorAnimationView: View {
    
    @State private var animationCount1 = 0
    @State private var animationCount2 = 0
    @State private var isAnimationActive = false
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
                    Image(systemName: "tv.badge.wifi")
                        .resizable()
                        .frame(width: 70, height: 50)
                        .symbolEffect(
                            .variableColor.cumulative.hideInactiveLayers.reversing,
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
            
            }
            .padding(.bottom, 32)
            
            VStack {
                Text("Discrete")
                    .font(.system(size: 22, weight: .bold))
                    .multilineTextAlignment(.center)
                HStack {
                    Image(systemName: "tv.badge.wifi")
                        .resizable()
                        .frame(width: 70, height: 50)
                        .symbolEffect(
                            .variableColor.cumulative.dimInactiveLayers.reversing,
                            options: .speed(1.5).repeat(2),
                            value: animationCount1
                        )
                    Button("Animate") {
                        withAnimation {
                            animationCount1 += 1
                        }
                    }
                    .padding(.leading, 32)
                }
                .padding(.bottom, 32)
                
                HStack {
                    Image(systemName: "tv.badge.wifi")
                        .resizable()
                        .frame(width: 70, height: 50)
                        .symbolEffect(
                            .variableColor.iterative.dimInactiveLayers,
                            options: .speed(1.5).repeat(3),
                            value: animationCount2
                        )
                    Button("Animate") {
                        withAnimation {
                            animationCount2 += 1
                        }
                    }
                    .padding(.leading, 32)
                }
            }
            .padding(.bottom, 32)
        }
        .padding(.top, 32)
    }
}

#Preview {
    VariableColorAnimationView()
}
