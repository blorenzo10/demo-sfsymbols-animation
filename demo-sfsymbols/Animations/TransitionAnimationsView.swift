//
//  TransitionAnimationsView.swift
//  demo-sfsymbols
//
//  Created by Bruno Lorenzo on 17/9/23.
//

import SwiftUI

struct TransitionAnimationsView: View {
    @State private var symbolIsHidden = true
    private var buttonTitle: String {
        return symbolIsHidden ? "Show" : "Hide"
    }
    
    var body: some View {
        VStack {
            if !symbolIsHidden {
                Image(systemName: "wifi.router")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 80, height: 60)
                    .transition(.symbolEffect(.appear))

            }
            
            Button(buttonTitle) {
                symbolIsHidden.toggle()
            }
        }
    }
}

#Preview {
    TransitionAnimationsView()
}
