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
           
            Spacer()
            
            Button("Show Message") {
                // Local Variables
                let awesomeMessage = "You Are Awesome!" // Use 'let' to create constants
                let greatMessage = "You Are Great!"
                
                imageName = "image\(imageNumber)"
                message = (message == awesomeMessage ? greatMessage : awesomeMessage)
                
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
