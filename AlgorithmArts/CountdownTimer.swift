//
//  CountdownTimer.swift
//  AlgorithmArts
//
//  Created by Lisa Willis on 6/8/23.
//
import SwiftUI

struct CountdownTimer: View {
    @State private var remainingSeconds: TimeInterval = 10 * 60 // 10 minutes
    @State private var isTimerRunning = false
    private var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack {
            Text("\(formattedTime(remainingSeconds))")
                .font(.largeTitle)
                .padding()
            
            Button(action: {
                isTimerRunning.toggle()
            }) {
                Text(isTimerRunning ? "Pause" : "Start")
                    .font(.headline)
                    .padding()
                    .foregroundColor(.white)
                    .background(isTimerRunning ? Color.red : Color.green)
                    .cornerRadius(10)
            }
        }
        .onReceive(timer) { _ in
            if isTimerRunning {
                if remainingSeconds > 0 {
                    remainingSeconds -= 1
                } else {
                    // Timer expired, perform any desired actions here
                    isTimerRunning = false
                }
            }
        }
    }
    
    private func formattedTime(_ time: TimeInterval) -> String {
        let minutes = Int(time) / 60
        let seconds = Int(time) % 60
        return String(format: "%02d:%02d", minutes, seconds)
    }
}

struct CountdownTimer_Previews: PreviewProvider {
    static var previews: some View {
        CountdownTimer()
    }
}
