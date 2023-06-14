//
//  SwiftUIView.swift
//  AlgorithmArts
//
//  Created by Lisa Willis on 2/11/23.
//
//<<<<<<< HEAD
//
import SwiftUI

struct Save: View {
@State private var bgColor = Color.white
@State private var isSaving = false

var body: some View {
    ZStack{
        Image("Screenshot 2023-02-01 at 5.58.41 PM")
            .resizable()
            .edgesIgnoringSafeArea( .all)
        RoundedRectangle(cornerRadius: 340)
        
            .foregroundColor(Color("LP background"))
            .overlay{
                RoundedRectangle(cornerRadius:340)
                    .stroke(lineWidth: 10)
                
            }
        
        Image("Keo")
            .resizable()
            .frame(width:700, height:1100)
      
        VStack{
            HStack{
                Image(systemName:"lessthan")
                    .font(.system(size:80))
                
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
                // .position(x:650 ,y:0)
                Image (systemName: "paintbrush.pointed.fill")
                    .font(.system(size:65.0))
                    .padding()
                // .position(x:750, y:-525)
               
                
                Spacer()

                ColorPicker ("", selection: $bgColor)
                //.font(.system(size:159))
                    .padding()
                
                    .scaleEffect(CGSize(width: 2, height: 2))
                    .labelsHidden()
                    .padding(.trailing, 20)
                
            }
            Spacer()
            RoundedRectangle(cornerRadius:800)
                .foregroundColor(Color("Color 11"))
                .padding()
                .opacity(0.55)
                .frame(width: 1000, height: 00)
// Text("Would you like to save your work (Folder.fill) – thank you!")
}
}
.alert("Would you like to save your work?", isPresented: $isSaving) {
HStack{
Button("Yes", role: .destructive) {
// TODO: add function to save the drawing
}
Button("No", role: .cancel) {
isSaving = false
}
}
}
}
}

struct Save_Previews: PreviewProvider {
static var previews: some View {
Save()
}
}

//
//=======
//
//import SwiftUI
//
//struct SwiftUIView: View {
//
//
//    var body: some View {
//        ZStack{
//            Image("Screenshot 2023-02-01 at 5.58.41 PM")
//                .resizable()
//                .edgesIgnoringSafeArea(.all)
//            RoundedRectangle(cornerRadius:60)
//                .foregroundColor(Color("LP background"))
//                .border(.black, width: 10)
//                .padding()
//            Image("Keo")
//                .resizable()
//                .frame(width:700, height:1100)
//
//            VStack {
//                HStack {
//                    Image(systemName:"lessthan")
//                        .font(.system(size: 75.0))
//                        .padding()
//                    Spacer()
//                }
//                Spacer()
//                Image (systemName: "eraser.fill")
//                    .font(.system(size:75.0))
//                    .padding()
//                    .position(x:900, y:-27)
//                Image (systemName: "paintbrush.pointed.fill")
//                    .font(.system(size:75.0))
//                    .padding()
//                    .position(x:765, y:-429)
//                Image (systemName:"folder.fill")
//                    .font(.system(size:75.0))
//                    .padding()
//                    .position(x:250, y:-840)
//                Spacer()
//            }
//            Spacer()
//            HStack{
//                Spacer()
//
//            }
//
//        }
//    }
//}
//
//struct SwiftUIView_Previews: PreviewProvider {
//    static var previews: some View {
//        SwiftUIView()
//    }
//}
//>>>>>>> main
