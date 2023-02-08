//
//  DrawingRectangle.swift
//  AlgorithmArts
//
//  Created by Lisa Willis on 2/7/23.
//

import SwiftUI

struct DrawingRectangle: View {
    
    let rows: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()),GridItem(.flexible())]
    
    
    var body: some View{
        Rectangle()
            .foregroundColor(Color("LP background"))
            .border(.black, width: 10)
            .padding()    }
}
struct DrawingRectangle_Previews: PreviewProvider {
    static var previews: some View {
        DrawingRectangle()
        
        }
}
    

