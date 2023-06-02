//
//  TemplateView.swift
//  AlgorithmArts
//
//  Created by Lisa Willis on 6/2/23.
//

import SwiftUI

struct TemplateView: View {
let columns = [
GridItem(.flexible()),
GridItem(.flexible())
]
var body: some View {

    ZStack{
        Text("Themes")
        
        
        
        Image("ColorSplash")
            .resizable()
            .edgesIgnoringSafeArea(.all)
        
        ZStack {
            DrawingRectangle()
            LazyVGrid(columns:columns) {
                ThemeBox(color1: .forestGreen, color2: .jade, color3: .lightJade, color4: .mintGreen)
                    .padding()
                ThemeBox(color1: .vdp, color2: .fuchsia, color3: .algorithmPink, color4: .darkPurple)
                    .padding()
                
                ThemeBox(color1: .forestGreen, color2: .jade, color3: .lightJade, color4: .mintGreen)
                    .padding()
                
                ThemeBox(color1: .vdp, color2: .fuchsia, color3: .algorithmPink, color4: .darkPurple)
                    .padding()
                
                
                
            }
        }
        .frame(width:800, height:1200)
    }
}
}

struct TemplateView_Previews: PreviewProvider {
static var previews: some View {
TemplateView()
}
}
