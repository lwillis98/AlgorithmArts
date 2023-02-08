//
//  TemplateView.swift
//  AlgorithmArts
//
//  Created by Lisa Willis on 2/7/23.
//

import SwiftUI

struct TemplateView: View {
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    
    var body: some View {
        ZStack{
            Image("Screenshot 2023-02-01 at 5.58.41 PM")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            Text("Select from the following templates")
            
            ZStack {
                DrawingRectangle()
                LazyVGrid(columns: columns) {
                    Box()
                    Box()
                    Box()
                    Box()
                    Box()
                    Box()
                }
            }
            .frame(width: 800, height: 1200)

        }
    }
}

struct TemplateView_Previews: PreviewProvider {
    static var previews: some View {
        TemplateView    ()
        
    }
}


