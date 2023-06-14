//
//  Router.swift
//  AlgorithmArts
//
//  Created by Lisa Willis on 6/8/23.
//

import Foundation

class Router: ObservableObject {
    @Published var currentScreen = Screen.home
    
    enum Screen {
        case home
        case records
        case drawing
        case selection
        case challenge
        case profile
    }
}
