//
//  TemplateView.swift
//  AlgorithmArts
//
//  Created by Lisa Willis on 2/7/23.
//

import SwiftUI

struct ColoringPageView: View {
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    
    var body: some View {
        ZStack{

            Image("Screenshot 2023-02-01 at 5.58.41 PM")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            
            ZStack {
        
                DrawingRectangle()
                LazyVGrid(columns: columns) {
                    Box(imageName: "GirlEyes")
                        .padding()
                    Box(imageName:"LittleHatGuy")
                        .padding()
                    Box(imageName:"Keo")
                        .padding()
                    Box(imageName:"Fox")
                        .padding()
                    Box(imageName:"GirlTalk")
                        .padding()
                    Box(imageName:"Akone")
                }
            }
            .frame(width: 800, height: 1200)
            BackButtonView()
                .position(x:70, y:28)
        
            
            }
        }
    }

struct ColoringPageView_Previews: PreviewProvider {
    static var previews: some View {
        ColoringPageView    ()
        
    }
}


