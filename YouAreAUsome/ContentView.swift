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
    @State private var messageNumber = 0
    @State private var imageName = ""
    @State private var imageNumber = 0
    
    // Views
    var body: some View {
        
        VStack {
            Spacer()
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
            
            Text(message)
                .font(.custom("Montserrat-Black", size: 35))
                .fontWeight(.heavy)
                .foregroundStyle(.red)
                .multilineTextAlignment(.center)
            
            Spacer()
            
            Button("Show Message") {
                let messages = ["Never Split The Party!",
                                "Nat 20!",
                                "Nat 1!",
                                "Focus Fire!",
                                "How Do You Want To Do This?",
                                "What Do You Do?"]
                
                message = messages[messageNumber]
                messageNumber += 1
                
                if messageNumber == messages.count {
                    messageNumber = 0
                }
                
                imageName = "image\(imageNumber)"
                imageNumber += 1
                
                if imageNumber > 12 {
                    imageNumber = 0
                }
                print(imageNumber)
                
            }
            .buttonStyle(.borderedProminent)
            .buttonStyle(.glassProminent)
            .tint(.black)
            .font(.custom("Montserrat-Black", size: 30))
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
