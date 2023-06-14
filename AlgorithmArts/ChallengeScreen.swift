//
//  ChhallengeScreen.swift
//  AlgorithmArts
//
//  Created by Lisa Willis on 5/22/23.
//

import SwiftUI
import PencilKit

struct ChallengeScreen: View {
    @State private var bgColor = Color.white
    
    @State var canvas = PKCanvasView()
    @State var isErasing = false
    var body: some View {
        ZStack{
           
            Image("Screenshot 2023-02-01 at 5.58.41 PM")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            
            RoundedRectangle(cornerRadius: 60)
                .frame(width:950.5, height:1115)
                .foregroundColor(Color("LP background"))
                .overlay {
//                    RoundedRectangle(cornerRadius:60)
//                        .stroke(lineWidth: 8.5)
//                    RoundedRectangle(cornerRadius: 60)
//                        .frame(width:780, height:190)
//                        .foregroundColor(Color("LP background"))
//                        .overlay {
//                            RoundedRectangle(cornerRadius: 60)
//                                .stroke(lineWidth: 10)
//                        }.position(x:481, y:120)
//
                    
                   
                    Spacer()
                    VStack{
                        HStack{
                            BackButtonView()
                            Image (systemName: "eraser.fill")
                                .font(.system(size:75.0))
                                .padding()
                               
                                .onTapGesture {
                                    isErasing = true
                                }
                            Image (systemName: "paintbrush.pointed.fill")
                                .font(.system(size:75.0))
                                .padding()
                               
                                .onTapGesture {
                                    isErasing = false
                                }
                            Image (systemName:"folder.fill")
                                .font(.system(size:75.0))
                                .padding()
                            ColorPicker("Set The Background Color",selection:$bgColor)
                                                .scaleEffect(CGSize(width:4, height:4))
                                                .labelsHidden()
                                                .font(.system(size:80))
                                                .padding(70)
                                               
                        }
                        HStack{
                            Text("A puppy eating pizza while surfing")
                                .bold()
                                .font(.system(size:40))
                               
//                            Text("10:00 Minutes")
//                             
//                                .bold()
//                                .font(.system(size:60))
//                                .foregroundColor(.BPurple)
                            
//                            CountdownTimer()
                        }
                        DrawingView(canvas: $canvas, color: $bgColor, isErasing: $isErasing)
                        
                        Spacer()
                    }
                }
        }
    }
}

struct ChallengeScreen_Previews: PreviewProvider {
    static var previews: some View {
        ChallengeScreen()
    }
}

