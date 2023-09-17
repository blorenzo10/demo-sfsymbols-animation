//
//  AppearAnimationView.swift
//  demo-sfsymbols
//
//  Created by Bruno Lorenzo on 16/9/23.
//

import SwiftUI

struct AppearAnimationView: View {
    
    @State private var isAnimation1Active = true
    @State private var isAnimation2Active = true
    @State private var isAnimation3Active = true
    @State private var isAnimation4Active = true
    private var animation1ButtonTitle: String {
        return !isAnimation1Active ? "Hide" : "Show"
    }
    private var animation2ButtonTitle: String {
        return !isAnimation2Active ? "Hide" : "Show"
    }
    private var animation3ButtonTitle: String {
        return !isAnimation3Active ? "Hide" : "Show"
    }
    private var animation4ButtonTitle: String {
        return !isAnimation4Active ? "Hide" : "Show"
    }
    
    var body: some View {
        ScrollView {
            VStack {
                Text("Up & By Layer")
                    .font(.system(size: 22, weight: .bold))
                    .multilineTextAlignment(.center)
                HStack {
                    Image(systemName: "wifi")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 60, height: 50)
                        .symbolEffect(
                            .appear.up.byLayer,
                            options: .speed(0.5),
                            isActive: isAnimation1Active
                        )
                        .padding(.leading, 32)
                    
                    Button(animation1ButtonTitle) {
                        withAnimation {
                            isAnimation1Active.toggle()
                        }
                    }
                    .padding(.leading, 32)
                }
                .padding(.bottom, 32)
            }
            
            VStack {
                Text("Up & Whole Symbole")
                    .font(.system(size: 22, weight: .bold))
                    .multilineTextAlignment(.center)
                HStack {
                    Image(systemName: "wifi")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 60, height: 50)
                        .symbolEffect(
                            .appear.up.wholeSymbol,
                            options: .speed(0.5),
                            isActive: isAnimation2Active
                        )
                        .padding(.leading, 32)
                    
                    Button(animation2ButtonTitle) {
                        withAnimation {
                            isAnimation2Active.toggle()
                        }
                    }
                    .padding(.leading, 32)
                }
                .padding(.bottom, 32)
            }
            
            VStack {
                Text("Down & By Layer")
                    .font(.system(size: 22, weight: .bold))
                    .multilineTextAlignment(.center)
                HStack {
                    Image(systemName: "wifi")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 60, height: 50)
                        .symbolEffect(
                            .appear.down.byLayer,
                            options: .speed(0.5),
                            isActive: isAnimation3Active
                        )
                        .padding(.leading, 32)
                    
                    Button(animation3ButtonTitle) {
                        withAnimation {
                            isAnimation3Active.toggle()
                        }
                    }
                    .padding(.leading, 32)
                }
                .padding(.bottom, 32)
            }
            
            VStack {
                Text("Down & Whole Symbole")
                    .font(.system(size: 22, weight: .bold))
                    .multilineTextAlignment(.center)
                HStack {
                    Image(systemName: "wifi")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 60, height: 50)
                        .symbolEffect(
                            .appear.down.wholeSymbol,
                            options: .speed(0.5),
                            isActive: isAnimation4Active
                        )
                        .padding(.leading, 32)
                    
                    Button(animation4ButtonTitle) {
                        withAnimation {
                            isAnimation4Active.toggle()
                        }
                    }
                    .padding(.leading, 32)
                }
                .padding(.bottom, 32)
            }
        }
    }
}

#Preview {
    AppearAnimationView()
}
