//
//  DiscreteAnimationsView.swift
//  demo-sfsymbols
//
//  Created by Bruno Lorenzo on 10/9/23.
//

import SwiftUI

struct BounceAnimationView: View {
    
    @State private var upWholeSymbolCount = 0
    @State private var upByLayerCount = 0
    @State private var downWholeSymbolCount = 0
    @State private var downByLayerCount = 0
    @State private var animationActive = false
    
    var body: some View {
        ScrollView {
            VStack {
                Text("Up & Whole Symbol")
                    .font(.system(size: 22, weight: .bold))
                    .multilineTextAlignment(.center)
                HStack {
                    Image(systemName: "speaker.wave.3.fill")
                        .resizable()
                        .frame(width: 70, height: 50)
                        .symbolEffect(
                            .bounce.up.wholeSymbol,
                            options: .speed(1.5),
                            value: upWholeSymbolCount
                        )
                    Button("Animate") { upWholeSymbolCount += 1 }
                        .padding(.leading, 32)
                }
            }
            .padding(.bottom, 32)
            
            VStack {
                Text("Up & By Layer")
                    .font(.system(size: 22, weight: .bold))
                    .multilineTextAlignment(.center)
                HStack {
                    Image(systemName: "speaker.wave.3.fill")
                        .resizable()
                        .frame(width: 70, height: 50)
                        .symbolEffect(
                            .bounce.up.byLayer,
                            options: .speed(1.5),
                            value: upByLayerCount
                        )
                    Button("Animate") { upByLayerCount += 1 }
                        .padding(.leading, 32)
                }
            }
            .padding(.bottom, 32)
            
            VStack {
                Text("Down & Whole Symbol")
                    .font(.system(size: 22, weight: .bold))
                    .multilineTextAlignment(.center)
                HStack {
                    Image(systemName: "speaker.wave.3.fill")
                        .resizable()
                        .frame(width: 70, height: 50)
                        .symbolEffect(
                            .bounce.down.wholeSymbol,
                            options: .speed(1.5),
                            value: downWholeSymbolCount
                        )
                    Button("Animate") { downWholeSymbolCount += 1 }
                        .padding(.leading, 32)
                }
            }
            .padding(.bottom, 32)
            
            VStack {
                Text("Down & By Layer")
                    .font(.system(size: 22, weight: .bold))
                    .multilineTextAlignment(.center)
                HStack {
                    Image(systemName: "speaker.wave.3.fill")
                        .resizable()
                        .frame(width: 70, height: 50)
                        .symbolEffect(
                            .bounce.down.byLayer,
                            value: downByLayerCount
                        )
                    Button("Animate") { downByLayerCount += 1 }
                        .padding(.leading, 32)
                }
            }
            .padding(.bottom, 32)
        }
        .padding(.top, 32)
    }
}

#Preview {
    BounceAnimationView()
}
