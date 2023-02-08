//
//  Box.swift
//  AlgorithmArts
//
//  Created by Lisa Willis on 2/8/23.
//

import SwiftUI

struct Box: View {
    var body: some View {
        Rectangle()
            .foregroundColor(Color("BoxColor"))
            .frame(width: 300, height:300)
            .padding()
    }
}
                             
struct Box_Previews: PreviewProvider {
    static var previews: some View {
        Box()
    }
}
