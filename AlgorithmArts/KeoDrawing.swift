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
    @EnvironmentObject var router: Router
    @State private var bgColor = Color.white
    @State private var isSaving = false
    
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
                    BackButtonView()
                        .padding()
                    Spacer()
                    
                    Spacer()
                    Image (systemName: "folder.fill")
                        .onTapGesture {
                            isSaving = true
                        }
                        .font(.system(size:65.0))
                    Image (systemName: "eraser.fill")
                        .font(.system(size:65.0))
                        .padding()
                        .onTapGesture {
                            isErasing = true
                        }
                    // .position(x:650 ,y:0)
                    Image (systemName: "paintbrush.pointed.fill")
                        .font(.system(size:65.0))
                        .padding()
                        .onTapGesture {
                            isErasing = false
                        }
 
                    // .position(x:750, y:-525)
                    ColorPicker ("", selection: $bgColor)
                    //.font(.system(size:159))
                        .padding()
                    
                        .scaleEffect(CGSize(width: 2, height: 2))
                        .labelsHidden()
                        .padding(.trailing, 20)
                
                }
//                Spacer()
//                Image (systemName: "eraser.fill")
//                    .font(.system(size:75.0))
//                    .padding()
//                    .position(x:850, y:-27)
//                    .onTapGesture {
//                        isErasing = true
//                    }
//                Image (systemName: "paintbrush.pointed.fill")
//                    .font(.system(size:75.0))
//                    .padding()
//                    .position(x:700, y:-427)
//                    .onTapGesture {
//                        isErasing = false
//                    }
//                Image (systemName:"folder.fill")
//                    .font(.system(size:75.0))
//                    .padding()
//                    .position(x:250, y:-850)
//                //>>>>>>> main
//                Spacer()
//            }
//            Spacer()
//
//
//
//            HStack{
//                Spacer()
//                ColorPicker("Set The Background Color",selection:$bgColor)
//                    .scaleEffect(CGSize(width:4, height:4))
//                    .labelsHidden()
//                    .font(.system(size:80))
//                    .padding(70)
//                    .position(x:850, y:1170)
            }
        }
        
    }

}


struct KeoDrawing_Previews: PreviewProvider {
    static var previews: some View {
        KeoDrawing()
    }
}


