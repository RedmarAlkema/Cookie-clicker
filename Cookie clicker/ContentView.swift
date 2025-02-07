//
//  ContentView.swift
//  Cookie clicker
//
//  Created by Redmar Alkema on 05/02/2025.
//

import SwiftUI

struct ContentView: View {
    @State var timesClicked: Int = 0
    
    var body: some View {
        VStack {
            Text("Cookie Clicker")
                .font(.largeTitle)
                .padding()
            
            Button(action: {
                print("Click cookie")
                timesClicked += 1
            }) {
                Image("cookie")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150) // Adjust size if needed
            }
            .padding()
           
            if timesClicked > 0 {
                Text("Click the cookie! \(timesClicked)")
                    .font(.title2)
                    .padding()
            }
            else {
                Text("Click the cookie!")
            }
        }
    }
}

#Preview {
    ContentView()
}
