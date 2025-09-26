//
//  ContentView.swift
//  YouAreAUsome
//
//  Created by artsw0rd on 9/19/25.
//

import SwiftUI

struct ContentView: View {
    // Struct-wide variables
    @State private var message = ""
    @State private var imageName = ""
    
    // Views
    var body: some View {
        
        VStack {
            Text(message)
                .font(.custom("JSL-Blackletter", size: 55))
                .fontWeight(.heavy)
                .foregroundStyle(.red)
                .multilineTextAlignment(.center)
                .minimumScaleFactor(0.5)
                .frame(minHeight: 100)
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
                .animation(.easeInOut(duration: 0.25), value: message)
            
            Spacer()
            
            Button("Show Message") {
                let messages = ["Never Split The Party!",
                                "Nat 20!",
                                "Nat 1!",
                                "Focus Fire!",
                                "How Do You Want To Do This?",
                                "What Do You Do?",
                                "I Check For Traps!",
                                "Roll for Initiative!",
                                "When Last We Left Our Heroes...",
                                "You Can Certainly Try!"]
                
                message = messages[Int.random(in: 0...messages.count - 1)]
                
                imageName = "image\(Int.random(in: 0...12))"
            }
            .buttonStyle(.borderedProminent)
            .buttonStyle(.glassProminent)
            .tint(.black)
            .font(.custom("OldNewspaperTypes", size: 30))
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
