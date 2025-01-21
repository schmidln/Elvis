//
//  ContentView.swift
//  Elvis
//
//  Created by Lucas Schmidt on 1/20/25.
//

import SwiftUI

struct ContentView: View {
    @State var message = ""
    @State var imageName = ""
    var body: some View {
        VStack {
            Text("What's So Funny 'Bout")
                .fontWeight(.black)
                .foregroundStyle(.purple)
                .font(.largeTitle)
        }
        
        Spacer()
        Image(systemName: imageName)
            .resizable()
            .scaledToFit()
            .frame(width: 300, height: 300)
        Text(message)
            .fontWeight(.black)
            .foregroundStyle(.purple)
            .font(.largeTitle)
        
        Spacer()
        HStack {
            Button("Peace", action: {
                message = "Peace"
                imageName = "peacesign"
            })
            Button("Love", action: {
                message = "Love"
                imageName = "heart"
            })
            Button("Understanding", action: {
                message = "Understanding"
                imageName = "lightbulb"
            })
        }
        .tint(.purple)
        .buttonStyle(.borderedProminent)
        
        .padding()
    }
}

#Preview {
    ContentView()
}
