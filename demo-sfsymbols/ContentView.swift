//
//  ContentView.swift
//  demo-sfsymbols
//
//  Created by Bruno Lorenzo on 10/9/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("SF Symbols Animations")
                    .font(.largeTitle.bold())
            }
            List {
                Section {
                    NavigationLink("Bounce") {
                        BounceAnimationView()
                            .navigationTitle("Bounce")
                            .navigationBarTitleDisplayMode(.large)
                    }
                    NavigationLink("Pulse") {
                        PulseAnimationView()
                            .navigationTitle("Pulse")
                            .navigationBarTitleDisplayMode(.large)
                    }
                    NavigationLink("Variable Color") {
                        VariableColorAnimationView()
                            .navigationTitle("Variable Color")
                            .navigationBarTitleDisplayMode(.large)
                    }
                    NavigationLink("Scale") {
                        ScaleAnimationView()
                            .navigationTitle("Scale")
                            .navigationBarTitleDisplayMode(.large)
                    }
                    NavigationLink("Appear") {
                        AppearAnimationView()
                            .navigationTitle("Appear")
                            .navigationBarTitleDisplayMode(.large)
                    }
                    NavigationLink("Disappear") {
                        DisappearAnimationView()
                            .navigationTitle("Disappear")
                            .navigationBarTitleDisplayMode(.large)
                    }
                    NavigationLink("Replace") {
                        ReplaceAnimationView()
                            .navigationTitle("Replace")
                            .navigationBarTitleDisplayMode(.large)
                    }
                }
                
                Section {
                    NavigationLink("Discrete Animations") {
                        DiscreteDemoAnimationsView()
                            .navigationTitle("Discrete")
                            .navigationBarTitleDisplayMode(.large)
                    }
                    
                    NavigationLink("Indefinite Animations") {
                        IndefiniteAnimationsView()
                            .navigationTitle("Discrete")
                            .navigationBarTitleDisplayMode(.large)
                    }
                    
                    NavigationLink("Transition Animations") {
                        TransitionAnimationsView()
                            .navigationTitle("Discrete")
                            .navigationBarTitleDisplayMode(.large)
                    }
                    
                    NavigationLink("Content Transition Animations") {
                        ContentTransitionAnimationsView()
                            .navigationTitle("Discrete")
                            .navigationBarTitleDisplayMode(.large)
                    }
                }
            }
            .ignoresSafeArea()
            .scrollContentBackground(.visible)
        }
    }
}

#Preview {
    ContentView()
}
