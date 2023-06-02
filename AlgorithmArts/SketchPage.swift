//
//  SketchPage.swift
//  AlgorithmArts
//
//  Created by Lisa Willis on 6/2/23.
//

import SwiftUI
import PencilKit
import UIKit

struct Sketchpage: View {
@State private var bgColor = Color.white
@State var canvas = PKCanvasView()
@State private var isErasing = false
@State private var isSaving = false

var body: some View {
    ZStack{
        
        Color("LP background")
            .edgesIgnoringSafeArea(.bottom)
        
        Image("keo")
            .resizable()
            .frame(width:825, height:825)
        
        DrawingView(canvas: $canvas, color: $bgColor, isErasing: $isErasing)

        VStack{
            HStack{
                Image(systemName:"lessthan")
                    .font(.system(size:65.0))
                
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
            Spacer()
            Rectangle()
                .foregroundColor(Color(""))
            // .edgesIgnoringSafeArea( .all)
                .opacity(0.55)
                .frame(width: 1000, height: 1000)
            
            //                ColorPicker ("", selection: $bgColor)
            //                    //.font(.system(size:159))
            //
            //                    .scaleEffect(CGSize(width: 4, height: 4))
            //                    .labelsHidden()
            //                    .padding()
            // Text("Would you like to save your work \("Folder.fill") – thank you!")
            
        }
        
    }
  // .overlay {
     // SketchPreview(canvas: $canvas, color: $bgColor)
// }
.alert("Would you like to save your work?", isPresented: $isSaving) {
// HStack{
// Button("Yes", role: .destructive) {
// // TODO: add function to save the drawing
// }
// Button("No", role: .cancel) {
// isSaving = false
// }
// }
// }

    }
}



struct Sketchpage_Previews: PreviewProvider {
    static var previews: some View {
        Sketchpage()
        
    }
}
}


