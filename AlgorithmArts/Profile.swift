//
//  Selection.swift
//  AlgorithmArts
//
//  Created by Lisa Willis on 6/2/23.
//

import SwiftUI

struct Profile: View {
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
        
        ZStack{
            Image("Screenshot 2023-02-01 at 5.58.41 PM")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            RoundedRectangle(cornerRadius: 60)
                .frame(width:850 ,height: 1150)
                .foregroundColor(Color("LP background"))
                .overlay {
                    RoundedRectangle(cornerRadius: 60)
                        .stroke(lineWidth: 10)
                }
            VStack {
                HStack{
                    BackButtonView()
                    Spacer()
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 60)
                        .frame(width: 600, height:150)
                        .foregroundColor(Color("LP background"))
                        .overlay {
                            
                            RoundedRectangle(cornerRadius: 60)
                                .stroke(lineWidth: 10)
                        }
                    Text("Themes")
                        .bold()
                        .font(.system(size: 36))
                }
                LazyVGrid(columns:columns) {
                    ThemeBox(color1: .ForestGreen, color2:.RGreen, color3: .LightGreen, color4: .lightgreen1)
                        .padding()
                    ThemeBox(color1: .Purple, color2: .LightPurple, color3: .BPurple, color4: .darkPurple)
                        .padding()
                    ThemeBox(color1: .ForestGreen, color2: .RGreen, color3: .LightGreen, color4: .lightgreen1)
                        .padding()
                    ThemeBox(color1: .Purple, color2: .LightPurple, color3: .BPurple, color4: .darkPurple)
                        .padding()
                }
                
            }
            
        }
    }
}
struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}

