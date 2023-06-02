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
        RoundedRectangle(cornerRadius: 60)
            .foregroundColor(Color("LP background"))
            .overlay{
                RoundedRectangle(cornerRadius:60)
                    .stroke(lineWidth: 10)
            }
        
    }
    struct DrawingRectangle_Previews: PreviewProvider {
        static var previews: some View {
            DrawingRectangle()
            
        }
    }
    
    
}
