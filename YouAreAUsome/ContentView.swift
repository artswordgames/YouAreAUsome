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
    @State private var lastMessageNumber = -1
    @State private var lastImageNumber = -1
    
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
                
                var messageNumber:Int
                repeat {
                    messageNumber = Int.random(in: 0...messages.count - 1)
                } while messageNumber == lastMessageNumber
                message = messages[messageNumber]
                lastMessageNumber = messageNumber
                
                var imageNumber: Int
                repeat {
                    imageNumber = Int.random(in: 0...12)
                } while imageNumber == lastImageNumber
                imageName = "image\(imageNumber)"
                lastImageNumber = imageNumber
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
