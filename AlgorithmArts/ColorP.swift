//
//  SwiftUIView.swift
//  AlgorithmArts
//
//  Created by Lisa Willis on 2/18/23.
//

import SwiftUI

struct ColorPView: View {
    @State private var bgColor = Color.white 
    
    var body: some View {
        HStack {
            Spacer()
            ColorPicker ("Set the background color", selection: $bgColor)
                .scaleEffect(CGSize(width: 4, height: 4))
                .labelsHidden()
                .padding(70)
        }
    }
    
    struct ColorPView_Previews: PreviewProvider {
        static var previews: some View {
            ColorPView()
        }
    }
}
