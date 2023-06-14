//
//  Box.swift
//  AlgorithmArts
//
//  Created by Lisa Willis on 2/8/23.
//

import SwiftUI

struct Box: View {
    let imageName: String
    
    var body: some View {
        ZStack {
            
            
                RoundedRectangle(cornerRadius:60)
                    .foregroundColor(Color("BoxColor"))
                    .frame(width: 250, height:250)
            
                    
            Image(imageName)
                
        }
     
        .overlay{
            RoundedRectangle(cornerRadius:60)
                .stroke(lineWidth: 10)
        }
    }
}
                             
struct Box_Previews: PreviewProvider {
    static var previews: some View {
        Box(imageName: "GirlEyes")
    }
}
