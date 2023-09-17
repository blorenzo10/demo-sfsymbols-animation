//
//  DiscreteDemoAnimationsView.swift
//  demo-sfsymbols
//
//  Created by Bruno Lorenzo on 17/9/23.
//

import SwiftUI

struct DiscreteDemoAnimationsView: View {
    
    @State private var animationCount = 0
    
    var body: some View {
        VStack {
            VStack {
                Text("Bounce")
                Image(systemName: "wifi.router")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 80, height: 60)
                    .symbolEffect(
                        .bounce,
                        value: animationCount
                    )
            }
            .padding(.bottom, 16)
            
            VStack {
                Text("Pulse")
                Image(systemName: "wifi.router")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 80, height: 60)
                    .symbolEffect(
                        .pulse,
                        value: animationCount
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
                        value: animationCount
                    )
            }
            .padding(.bottom, 16)
            
            Button("Animate") {
                animationCount += 1
            }
        }
    }
}

#Preview {
    DiscreteDemoAnimationsView()
}
