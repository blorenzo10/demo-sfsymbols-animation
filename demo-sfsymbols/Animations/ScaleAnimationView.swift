//
//  ScaleAnimationView.swift
//  demo-sfsymbols
//
//  Created by Bruno Lorenzo on 16/9/23.
//

import SwiftUI

struct ScaleAnimationView: View {
    
    @State private var isAnimationUpActive = false
    @State private var isAnimationDownActive = false
    private var animationUpButtonTitle: String {
        return isAnimationUpActive ? "Stop" : "Animate"
    }
    private var animationDownButtonTitle: String {
        return isAnimationDownActive ? "Stop" : "Animate"
    }
    
    var body: some View {
        ScrollView {
            VStack {
                Text("Up")
                    .font(.system(size: 22, weight: .bold))
                    .multilineTextAlignment(.center)
                HStack {
                    Image(systemName: "tv.badge.wifi")
                        .resizable()
                        .frame(width: 80, height: 50)
                        .symbolEffect(
                            .scale.up,
                            isActive: isAnimationUpActive
                        )
                        .padding(.leading, 32)
                        
                    Button(animationUpButtonTitle) {
                        withAnimation {
                            isAnimationUpActive.toggle()
                        }
                    }
                    .padding(.leading, 32)
                }
                .padding(.bottom, 32)
                
                Text("Down")
                    .font(.system(size: 22, weight: .bold))
                    .multilineTextAlignment(.center)
                HStack {
                    Image(systemName: "tv.badge.wifi")
                        .resizable()
                        .frame(width: 80, height: 50)
                        .symbolEffect(
                            .scale.down,
                            isActive: isAnimationDownActive
                        )
                        .padding(.leading, 32)
                        
                    Button(animationDownButtonTitle) {
                        withAnimation {
                            isAnimationDownActive.toggle()
                        }
                    }
                    .padding(.leading, 32)
                }
                .padding(.bottom, 32)
                
            }
            .padding(.bottom, 32)
        }
    }
}

#Preview {
    ScaleAnimationView()
}
