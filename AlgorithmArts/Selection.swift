//
//  Selection.swift
//  AlgorithmArts
//
//  Created by Lisa Willis on 6/2/23.
//

import SwiftUI

struct Selection: View {
    
    var body: some View{
        ZStack{
            Image("Screenshot 2023-02-01 at 5.58.41 PM")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            RoundedRectangle(cornerRadius: 60)
                .frame(width:800 ,height: 1200)
                .foregroundColor(Color("LP background"))
                .overlay {
                    RoundedRectangle(cornerRadius: 60)
                        .stroke(lineWidth: 10)
                    
                }
            
            VStack(spacing:50){
                Text("Coloring")
                    .font(.system(size: 72))
                    .bold()
                    .frame(width:500)
                    .padding(.all,50)
                    .overlay(RoundedRectangle(cornerRadius:60)
                        .stroke(.black, lineWidth: 10)
                             
                    )
                Text("Line Art")
                    .font(.system(size: 72))
                    .bold()
                    .frame(width:500)
                    .padding(.all,50)
                    .overlay(RoundedRectangle(cornerRadius:60)
                        .stroke(.black, lineWidth: 10)
                            
                    )
                Text("Sketching")
                    .font(.system(size: 72))
                    .bold()
                    .frame(width:500)
                    .padding(.all,50)
                    .overlay(RoundedRectangle(cornerRadius:60)
                        .stroke(.black, lineWidth:10)
                             )
            
                    

            }
            VStack{
                Image(systemName:"lessthan")
                    .position(x:60,y:30)
                    .font(.system(size:100))
                
                
            }
            //
            //        RoundedRectangle(cornerRadius: 60)
            //            .frame(width: 600, height:150)
            //            .foregroundColor(Color("LP background"))
            //            .overlay {
            //
            //                RoundedRectangle(cornerRadius: 60)
            //                    .stroke(lineWidth: 10)
            //            }
            //        RoundedRectangle(cornerRadius: 60)
            //            .frame(width: 600, height:150)
            //            .foregroundColor(Color("LP background"))
            //            .overlay {
            //
            //                RoundedRectangle(cornerRadius: 60)
            //                    .stroke(lineWidth: 10)
            //            }
            //
            //
            //        Text("Coloring")
            //            .bold()
            //            .font(.system(size: 36))
            //
            //        RoundedRectangle(cornerRadius: 60)
            //            .frame(width:600, height:150)
            //            .foregroundColor(Color("LP background"))
            //
            //
            //            .overlay {
            //
            //
            //                Text("Sketch")
            //
            //                    .bold()
            //                    .font(.system(size: 36))
            //
            //                RoundedRectangle(cornerRadius: 60)
            //                    .stroke(lineWidth: 10)
            //
            //
            //            }
            //
            //            .frame(width:900, height:800)
            //            .position(x:500, y:900)
            //            .padding()
            
            
            
            
            
            
            
            
            
            
        }
        
    }
    
    
    
    
    struct Selection_Previews: PreviewProvider {
        static var previews: some View {
            Selection()
        }
    }}
