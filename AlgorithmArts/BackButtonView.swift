//
//  BackButtonView.swift
//  AlgorithmArts
//
//  Created by Lisa Willis on 6/14/23.
//

import SwiftUI

struct BackButtonView: View {
    @EnvironmentObject var router: Router
    var body: some View {
        Image(systemName:"lessthan")
            .font(.system(size: 100))
            .padding()
            .onTapGesture {
                router.currentScreen = .home
            }
    }
}

struct BackButtonView_Previews: PreviewProvider {
    static var previews: some View {
        BackButtonView()
    }
}
