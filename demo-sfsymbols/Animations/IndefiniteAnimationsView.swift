//
//  IndefiniteAnimationsView.swift
//  demo-sfsymbols
//
//  Created by Bruno Lorenzo on 17/9/23.
//

import SwiftUI

struct IndefiniteAnimationsView: View {
    
    @State private var animationIsActive = false
    private var buttonTitle: String {
        return animationIsActive ? "Stop animations" : "Start animations"
    }
    
    var body: some View {
        VStack {
            VStack {
                Text("Pulse")
                Image(systemName: "wifi.router")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 80, height: 60)
                    .symbolEffect(
                        .pulse,
                        isActive: animationIsActive
                    )
            }
            .padding(.bottom, 16)
            
            VStack {
                Text("Variable Color")
                Image(systemName: "wifi.router")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 80, height: 60)
                    .symbolEffect(
                        .variableColor,
                        isActive: animationIsActive
                    )
            }
            .padding(.bottom, 16)
            
            VStack {
                Text("Scale")
                Image(systemName: "wifi.router")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 80, height: 60)
                    .symbolEffect(
                        .scale.up,
                        isActive: animationIsActive
                    )
            }
            .padding(.bottom, 16)
            
            VStack {
                Text("Appear")
                Image(systemName: "wifi.router")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 80, height: 60)
                    .symbolEffect(
                        .appear,
                        isActive: !animationIsActive
                    )
            }
            .padding(.bottom, 16)
            
            VStack {
                Text("Disappear")
                Image(systemName: "wifi.router")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 80, height: 60)
                    .symbolEffect(
                        .disappear,
                        isActive: animationIsActive
                    )
            }
            .padding(.bottom, 16)
            
            Button(buttonTitle) {
                animationIsActive.toggle()
            }
        }
    }
}

#Preview {
    IndefiniteAnimationsView()
}
