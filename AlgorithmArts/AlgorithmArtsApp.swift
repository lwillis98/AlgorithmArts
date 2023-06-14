//
//  AlgorithmArtsApp.swift
//  AlgorithmArts
//
//  Created by Lisa Willis on 2/6/23.
//

import SwiftUI

 @main
struct AlgorithmArtsApp: App {
    @StateObject var router = Router()
    
    var body: some Scene {
        WindowGroup {
            Group {
                switch router.currentScreen {
                case .home:
                    HomePage()
                case .records:
                    ThemeBox(color1: .BPurple, color2: .BPurple, color3: .blue, color4: .blue)
                case .drawing:
                    KeoDrawing()
                case .selection:
                    Selection()
                case .challenge:
                    ChallengeScreen()
                }
            }
            .environmentObject(router)

        }
    }
}
