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
            Spacer()
            
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
                .foregroundStyle(.black)
            
            Spacer()
            
            Button("Press Me") {
                // Local Variables
                let awesomeMessage = "You Are Awesome!" // Use 'let' to create constants
                let greatMessage = "You Are Great!"
                let thumbsUpImage = "hand.thumbsup"
                let sunImage = "sun.max.fill"
                
                // if-else Conditional logic
//                if message == awesomeMessage {
//                    message = greatMessage
//                    imageName = thumbsUpImage
//                } else {
//                    message = awesomeMessage
//                    imageName = sunImage
//                }
                // Ternary logic
                message = (message == awesomeMessage ? greatMessage : awesomeMessage)
                imageName = (imageName == sunImage ? thumbsUpImage : sunImage)
                
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.orange)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
