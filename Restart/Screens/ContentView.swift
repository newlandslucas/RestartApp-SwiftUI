//
//  ContentView.swift
//  Restart
//
//  Created by Lucas Newlands on 24/03/22.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("onboarding") var isOnboradingViewActive: Bool = true
    
    var body: some View {
        ZStack {
            if isOnboradingViewActive {
                OnboardingView()
            } else {
                HomeView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("Iphone 13")
    }
}
