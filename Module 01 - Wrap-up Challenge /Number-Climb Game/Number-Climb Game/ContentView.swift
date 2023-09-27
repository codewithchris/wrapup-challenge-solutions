//
//  ContentView.swift
//  Number-Climb Game
//
//  See LICENSE folder for this project's licensing information.
//
//  Created by CodeWithChris (https://codewithchris.com)
//  Copyright © 2023 CodeWithChris. All rights reserved.


import SwiftUI

struct ContentView: View {
    @State private var currentNumber = 0
    @State private var shouldIncrease = true
    
    var body: some View {
        VStack {
            Text("\(currentNumber)")
                .font(.largeTitle)
            
            Button("Tap Me!") {
                if shouldIncrease {
                    increase()
                } else {
                    decrease()
                }
            }
        }
    }
    
    func increase() {
        currentNumber += Int.random(in: 1...10)
        
        if currentNumber > 50 {
            shouldIncrease = false
        }
    }
    
    func decrease() {
        currentNumber -= Int.random(in: 1...10)
        
        if currentNumber < 0 {
            shouldIncrease = true
        }
    }
}

#Preview {
    ContentView()
}
