//
//  DrawingView.swift
//  AlgorithmArts
//
//  Created by Lisa Willis on 2/14/23.
//

import Foundation
import PencilKit
import SwiftUI

struct DrawingView: UIViewRepresentable {
    @Binding var canvas:PKCanvasView
    @Binding var color: Color
    
    func makeUIView(context: Context) -> PKCanvasView {
        canvas.drawingPolicy = .anyInput
        canvas.tool = PKInkingTool(.marker, color: UIColor(color))
        canvas.backgroundColor = .clear
        return canvas
    }
    
    func updateUIView(_ uiView: PKCanvasView, context: Context) {
        canvas.tool = PKInkingTool(.marker, color: UIColor(color))

    }
    
}

