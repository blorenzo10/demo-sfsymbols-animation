//
//  OverallDemoView.swift
//  demo-sfsymbols
//
//  Created by Bruno Lorenzo on 17/9/23.
//

import SwiftUI

struct OverallDemoView: View {
    
    @State private var bounceCount = 0
    @State private var pulseCount = 0
    
    var body: some View {
        VStack {
            Text("Bounce")
            Image(systemName: "wifi")
                .symbolEffect(.bounce, value: bounceCount)
                .padding(.top, 5)
            Button("Animate") { bounceCount += 1 }
                .padding(.vertical, 5)
            
            Divider()
            
            Text("Pulse")
            Image(systemName: "wifi")
                .symbolEffect(.pulse, value: pulseCount)
                .padding(.top, 5)
            Button("Animate") { pulseCount += 1 }
                .padding(.top, 5)
            
        }
    }
}

#Preview {
    OverallDemoView()
}
