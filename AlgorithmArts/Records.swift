//
//  TemplateView.swift
//  AlgorithmArts
//
//  Created by Lisa Willis on 6/2/23.
//

import SwiftUI

struct RecordsView: View {
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
                    ZStack{
                        Image("Screenshot 2023-02-01 at 5.58.41 PM")
                            .resizable()
                            .edgesIgnoringSafeArea(.all)
                        
                        RoundedRectangle(cornerRadius: 60)
                            .frame(width:850 ,height: 1200)
                            .foregroundColor(Color("LP background"))
                            .overlay {
                                RoundedRectangle(cornerRadius: 60)
                                    .stroke(lineWidth: 10)
                            }
                        VStack{
                            ZStack {
                                RoundedRectangle(cornerRadius: 60)
                                    .frame(width: 600, height:150)
                                    .foregroundColor(Color("LP background"))
                                    .overlay {
                                        Image(systemName:"person.circle")
                                            .font(.system(size:80))
                                            .position(x:300,y:-80)
                                            .bold()
                                        RoundedRectangle(cornerRadius: 60)
                                            .stroke(lineWidth: 10)
                                    }
                                    .position(x:400, y:300)
                                
                                Text("Themes")
                                    .font(.system(size:60))
                                    .bold()
                                    .position(x:400,y:300)
                                Image(systemName:"gearshape.fill")
                                    .position(x:200, y:300)
                                    .bold()
                                    .font(.system(size: 80))
                                
                            }
                            
                            Text("Records")
                                .bold()
                                .font(.system(size:60))
                                
                            LazyVGrid(columns:columns) {
                                ThemeBox(color1: .ForestGreen, color2: .RGreen, color3: .LightGreen, color4: .lightgreen1)
                                    .padding()
                                ThemeBox(color1: .Purple, color2: .LightPurple, color3: .BPurple, color4: .darkPurple)
                                    .padding()
                                
                                ThemeBox(color1: .ForestGreen, color2: .RGreen, color3: .LightGreen, color4: .lightgreen1)
                                    .padding()
                                
                                ThemeBox(color1: .Purple, color2: .LightPurple, color3: .BPurple, color4: .darkPurple)
                                    .padding()
                                
                                
                                
                            }
                            .position(x:400,y:300)
                        }
                    .frame(width:800, height:1200)
                    .position(x:500,y:600)
                }
            }
        }
    
    struct RecordsView_Previews: PreviewProvider {
        static var previews: some View {
            RecordsView()
        }
    }

