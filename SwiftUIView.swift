//
//  SwiftUIView.swift
//  AlgorithmArts
//
//  Created by Lisa Willis on 5/4/23.
//

import SwiftUI

struct ContentView2: View {
    var body: some View {
        ZStack{
            Color.white
                .ignoresSafeArea()
            Text("Algorthim Arts")
                .foregroundColor(.black)
                .font(.system(size:80))
        }
    }
}

struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2()
    }
}
