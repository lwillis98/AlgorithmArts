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
                    RecordsView()
                case .drawing:
                    KeoDrawing()
                case .selection:
                    Selection()
                }
            }
            .environmentObject(router)
            
         //   SplashScreenView()
        }
    }
}
