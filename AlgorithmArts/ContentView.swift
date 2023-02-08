//
//  ContentView.swift
//  AlgorithmArts
//
//  Created by Lisa Willis on 2/6/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
        Image("Screenshot 2023-02-01 at 5.58.41 PM")
        .resizable()
        .edgesIgnoringSafeArea(.all)
            Text("AlgorithmArts")
                .bold()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

