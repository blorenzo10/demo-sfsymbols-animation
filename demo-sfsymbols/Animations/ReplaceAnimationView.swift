//
//  ReplaceAnimationView.swift
//  demo-sfsymbols
//
//  Created by Bruno Lorenzo on 16/9/23.
//

import SwiftUI

struct ReplaceAnimationView: View {
    
    @State private var showWifi1 = true
    @State private var showWifi2 = true
    @State private var showWifi3 = true
    private var animation1ButtonTitle: String {
        return showWifi1 ? "Hide" : "Show"
    }
    private var animation2ButtonTitle: String {
        return showWifi2 ? "Hide" : "Show"
    }
    private var animation3ButtonTitle: String {
        return showWifi3 ? "Hide" : "Show"
    }
    
    var body: some View {
        ScrollView {
            VStack {
                Text("Down & Up")
                    .font(.system(size: 22, weight: .bold))
                    .multilineTextAlignment(.center)
                HStack {
                    Image(systemName: showWifi1 ? "wifi" : "wifi.exclamationmark")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 60, height: 50)
                        .contentTransition(
                            .symbolEffect(
                                .replace.downUp.byLayer
                            )
                        )
                    
                    Button(animation1ButtonTitle) {
                        withAnimation {
                            showWifi1.toggle()
                        }
                    }
                }
                .padding(.bottom, 32)
            }
            
            VStack {
                Text("Up & Up")
                    .font(.system(size: 22, weight: .bold))
                    .multilineTextAlignment(.center)
                HStack {
                    Image(systemName: showWifi2 ? "wifi" : "wifi.exclamationmark")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 60, height: 50)
                        .contentTransition(
                            .symbolEffect(
                                .replace.upUp.byLayer
                            )
                        )
                    
                    Button(animation2ButtonTitle) {
                        withAnimation {
                            showWifi2.toggle()
                        }
                    }
                }
                .padding(.bottom, 32)
            }
            
            VStack {
                Text("Off & Up")
                    .font(.system(size: 22, weight: .bold))
                    .multilineTextAlignment(.center)
                HStack {
                    Image(systemName: showWifi3 ? "wifi" : "wifi.exclamationmark")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 60, height: 50)
                        .contentTransition(
                            .symbolEffect(
                                .replace.offUp.byLayer
                            )
                        )
                    
                    Button(animation3ButtonTitle) {
                        withAnimation {
                            showWifi3.toggle()
                        }
                    }
                }
                .padding(.bottom, 32)
            }
            
        }
    }
}

#Preview {
    ReplaceAnimationView()
}
