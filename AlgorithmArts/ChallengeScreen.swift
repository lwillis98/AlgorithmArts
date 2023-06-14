//
//  ChhallengeScreen.swift
//  AlgorithmArts
//
//  Created by Lisa Willis on 5/22/23.
//

import SwiftUI

struct ChallengeScreen: View {
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
                    
                    Text("A puppy eating pizza while surfing")
                        .bold()
                        .font(.system(size:40))
                        .position(x:480, y:60)
                    Text("10:00 Minutes")
                        .position(x:480, y:150)
                        .bold()
                        .font(.system(size:60))
                        .foregroundColor(.BPurple)
                    
                    CountdownTimer()
                    Spacer()
                    VStack{
                        HStack{
                            BackButtonView()
                            Spacer()
                        }
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

