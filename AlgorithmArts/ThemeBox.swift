//
//  ThemeBox.swift
//  AlgorithmArts
//
//  Created by Lisa Willis on 6/2/23.
//

import SwiftUI

struct ThemeBox: View {
let color1: Color
let color2: Color
let color3: Color
let color4: Color

var body: some View {
    ZStack {
        RoundedRectangle(cornerRadius: 60)
            .foregroundColor(.boxColor)
            .frame(width:250,height: 250)

            .overlay{
                RoundedRectangle(cornerRadius: (60))
                    .stroke(lineWidth:10)

            }
        
        
        
        
        VStack {
            HStack {
                Rectangle()
                    .frame(width: 50, height: 50)
                    .foregroundColor(color1)
                Rectangle()
                    .frame(width: 50, height: 50)
                    .foregroundColor(color2)
                
            }
            
            HStack {
                Rectangle()
                    .frame(width: 50, height: 50)
                    .foregroundColor(color3)
                
                
                Rectangle()
                    .frame(width: 50, height: 50)
                    .foregroundColor(color4)
                
            }
        }
    }
}
}

struct ThemeBox_Previews: PreviewProvider {
static var previews: some View {
ThemeBox(color1: .ForestGreen, color2: .RGreen, color3: .LightGreen, color4: .lightgreen1)
}
}

