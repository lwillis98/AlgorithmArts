//
//  RecordedChallenge.swift
//  AlgorithmArts
//
//  Created by Lisa Willis on 5/22/23.
//

import SwiftUI

struct RecordedChallenge: View {
    var body: some View {
        ZStack{
            Image("Screenshot 2023-02-01 at 5.58.41 PM")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            RoundedRectangle(cornerRadius: 60)
                .frame(width:950.5, height:1115)
                .foregroundColor(Color("LP background"))
                .overlay {
                    RoundedRectangle(cornerRadius:60)
                        .stroke(lineWidth: 8.5)
                    
                    RoundedRectangle(cornerRadius: 60)
                        .frame(width:780, height:190)
                        .foregroundColor(Color("LP background"))
                        .overlay {
                            RoundedRectangle(cornerRadius: 60)
                                .stroke(lineWidth: 10)
                        }.position(x:481, y:120)
                    Text("Challenge")
                        .bold()
                        .font(.system(size:55))
                        .position(x:450.5, y:60)
                    Text("Total Time: 10:00")
                        .bold()
                        .font(.system(size:40))
                        .position(x:300, y:180)
                    Text("Time Left: 0:00")
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
                    Text("Next")
                        .bold()
                        .font(.system(size:60))
                        .position(x:255, y:500)
                }
            
        }
    }
    
    struct RecordedChallenge_Previews: PreviewProvider {
        static var previews: some View {
            RecordedChallenge()
        }
    }
}
