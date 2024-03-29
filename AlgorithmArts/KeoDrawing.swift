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
            DrawingView(canvas: $canvas, color: $bgColor)
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
                }
                Spacer()
                Image (systemName: "eraser.fill")
                    .font(.system(size:75.0))
                    .padding()
                    .position(x:850, y:-27)
                Image (systemName: "paintbrush.pointed.fill")
                    .font(.system(size:75.0))
                    .padding()
                    .position(x:700, y:-427)
                Image (systemName:"folder.fill")
                    .font(.system(size:75.0))
                    .padding()
                    .position(x:250, y:-850)
                Spacer()
            }
            Spacer()
            
            
            HStack{
                Spacer()
                ColorPicker("Set The Background Color",selection:$bgColor)
                    .scaleEffect(CGSize(width:4, height:4))
                    .labelsHidden()
                    .font(.system(size:80))
                    .padding(70)
                    .position(x:850, y:1170)
            }
        }
        
    }
    
    
    
    struct KeoDrawing_Previews: PreviewProvider {
        static var previews: some View {
            KeoDrawing()
        }
    }
    
}
