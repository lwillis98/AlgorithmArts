//
//  Outline.swift
//  AlgorithmArts
//
//  Created by Lisa Willis on 2/8/23.
//
import PencilKit
import SwiftUI
import UIKit

struct KeoDrawing: View {
    @State private var bgColor = Color.white
    
    @State var canvas = PKCanvasView()
    @State var isErasing = false
    
    var body: some View{
        ZStack{
            Image("Screenshot 2023-02-01 at 5.58.41 PM")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            RoundedRectangle(cornerRadius: 340)
            
                .foregroundColor(Color("LP background"))
            
            Image("Keo")
                .resizable()
                .frame(width:700, height:1100)
            DrawingView(canvas: $canvas, color: $bgColor, isErasing: $isErasing)
                .overlay{
                    RoundedRectangle(cornerRadius:340)
                        .stroke(lineWidth: 10)
                }
            VStack {
                HStack {
                    Image(systemName:"lessthan")
                        .font(.system(size: 100))
                        .padding()
                    
                    Spacer()
                
                Spacer()
                Image (systemName: "eraser.fill")
                    .font(.system(size:65.0))
                    .padding()
                    
                Image (systemName: "paintbrush.pointed.fill")
                    .font(.system(size:65.0))
                    .padding()
                    
                Image (systemName:"folder.fill")
                    .font(.system(size:65.0))
                    .padding()
                    
                Spacer()
            }
            Spacer()
            
        }
            HStack{
                Spacer()
                ColorPicker ("", selection: $bgColor)
                //.font(.system(size:159))
                    .padding()
                
                    .scaleEffect(CGSize(width: 2, height: 2))
                    .labelsHidden()
                    .padding(.trailing, 20)
                    .position(x:400, y:50)
            }
        }
        
    }
    
    
    
    struct KeoDrawing_Previews: PreviewProvider {
        static var previews: some View {
            KeoDrawing()
        }
    }
    
}
