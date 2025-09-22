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
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
            
            Text(message)
                .font(.custom("Montserrat-Black", size: 35))
                .foregroundStyle(.blue)
           
            Spacer()
            
            Button("Press Me") {
                // Local Variables
                let awesomeMessage = "You Are Awesome!" // Use 'let' to create constants
                let greatMessage = "You Are Great!"
                let audhdImage1 = "Hyperfocus"
                let audhdImage2 = "PowerfulMind"
                
                // Ternary logic
                message = (message == awesomeMessage ? greatMessage : awesomeMessage)
                imageName = (imageName == audhdImage2 ? audhdImage1 : audhdImage2)
                
            }
            .buttonStyle(.borderedProminent)
            .font(.custom("Montserrat-Black", size: 50))
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
