//
//  HomePage.swift
//  AlgorithmArts
//
//  Created by Lisa Willis on 5/8/23.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        ZStack{
            Image("Screenshot 2023-02-01 at 5.58.41 PM")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            RoundedRectangle(cornerRadius: 60)
                        .frame(width: 600, height:150)
                        .foregroundColor(Color("LP background"))
                        .overlay {
                            RoundedRectangle(cornerRadius: 60)
                                .stroke(lineWidth: 10)
                        }
            Text("Challenge")
                .bold()
                .font(.system(size: 36))
            
            RoundedRectangle(cornerRadius: 60)
                .frame(width:600, height:150)
                        .foregroundColor(Color("LP background"))
            
                        .overlay {
                            
             Text("Play")
                        
             .bold()
             .font(.system(size: 36))
                            
                            RoundedRectangle(cornerRadius: 60)
                                .stroke(lineWidth: 10)
     
                            
                        }
           
            

                .frame(width: 900, height:800)
                .position(x:500, y:900)
            .padding()
            Image(systemName:"person.circle")
                .font(.system(size:150))
                .position(x:500, y:1200)
    
               
            
        }
        
        
        
    }
    
    
    struct HomePage_Previews: PreviewProvider {
        static var previews: some View {
            HomePage()
        }
    }
}
