//
//  SwiftUIView.swift
//  AlgorithmArts
//
//  Created by Lisa Willis on 2/18/23.
//

import SwiftUI
import UIKit

struct ToolKitView: View {
    var body: some View {
        VStack{
            Menu{
                Button(role: <#LocalizedStringKey#>, action:{}, label:{Text("First Option")})
            }label:{
                Label(
                    <#LabelStyleConfiguration#>)
            }
        }
    }
    
    struct ToolKitView_Previews: PreviewProvider {
        static var previews: some View {
            ToolKitView()
        }
    }
}
