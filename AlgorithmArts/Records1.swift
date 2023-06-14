//
//  ChallengeScreen2.swift
//  AlgorithmArts
//
//  Created by Lisa Willis on 5/22/23.
//

import SwiftUI

struct Records1: View {
    @State private var bgColor = Color.white
    
    var body: some View {
        ZStack{
            Image("Screenshot 2023-02-01 at 5.58.41 PM")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            RoundedRectangle(cornerRadius: 60)
                .frame(width:980.5, height:1115)
                .foregroundColor(Color("LP background"))
                .overlay {
                    RoundedRectangle(cornerRadius: 60)
                        .stroke(lineWidth: 8.5)
                    RoundedRectangle(cornerRadius: 60)
                        .frame(width: 780, height:190)
                        .foregroundColor(Color("LP background"))
                        .overlay {
                            RoundedRectangle(cornerRadius: 60)
                                .stroke(lineWidth: 10)
                        }.position(x:481, y:120)
                    Text("A puppy eating pizza while surfing")
                        .bold()
                        .font(.system(size:40))
                        .position(x:450.5, y:60)
                    Text("Total Time: 7:30")
                        .bold()
                        .font(.system(size:40))
                        .position(x:300, y:180)
                    Text("Time Left: 3:30")
                        .bold()
                        .font(.system(size:40))
                        .position(x:625, y:180)
                }
            RoundedRectangle(cornerRadius: 60)
                .frame(width:500, height:130)
                .foregroundColor(Color("LP background"))
                .overlay {
                    RoundedRectangle(cornerRadius: 60)
                        .stroke(lineWidth: 10)
                        .position(x:255, y:500)
                    Text(" Continue")
                        .bold()
                        .font(.system(size:60))
                        .position(x:255, y:500)
                }
            HStack{
                Spacer()
                ColorPicker("Set The Background Color",selection:$bgColor)
                    .scaleEffect(CGSize(width:4, height:4))
                    .labelsHidden()
                    .font(.system(size:65))
                    .padding(70)
                    .position(x:850, y:1200)
            }
        }
        
    }
}

struct Records1_Previews: PreviewProvider {
    static var previews: some View {
        Records1()
    }
}

