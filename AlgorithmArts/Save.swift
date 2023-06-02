//
//  SwiftUIView.swift
//  AlgorithmArts
//
//  Created by Lisa Willis on 2/11/23.
//

import SwiftUI

struct SwiftUIView: View {


    var body: some View {
        ZStack{
            Image("Screenshot 2023-02-01 at 5.58.41 PM")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            RoundedRectangle(cornerRadius:60)
                .foregroundColor(Color("LP background"))
                .border(.black, width: 10)
                .padding()
            Image("Keo")
                .resizable()
                .frame(width:700, height:1100)
            
            VStack {
                HStack {
                    Image(systemName:"lessthan")
                        .font(.system(size: 75.0))
                        .padding()
                    Spacer()
                }
                Spacer()
                Image (systemName: "eraser.fill")
                    .font(.system(size:75.0))
                    .padding()
                    .position(x:900, y:-27)
                Image (systemName: "paintbrush.pointed.fill")
                    .font(.system(size:75.0))
                    .padding()
                    .position(x:765, y:-429)
                Image (systemName:"folder.fill")
                    .font(.system(size:75.0))
                    .padding()
                    .position(x:250, y:-840)
                Spacer()
            }
            Spacer()
            HStack{
                Spacer()
              
            }
            
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
