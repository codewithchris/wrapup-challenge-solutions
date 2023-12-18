//
//  AddEntryView.swift
//  Personal Journal App
//
//  See LICENSE folder for this project's licensing information.
//
//  Created by CodeWithChris (https://codewithchris.com)
//  Copyright © 2023 CodeWithChris. All rights reserved.


import SwiftUI

struct AddEntryView: View {
    @Binding var currentEntry: String
    @Binding var entries: [String]
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            HStack {
                Spacer() // This pushes the button to the far right
                Button(action: {
                    dismiss()
                }) {
                    Image(systemName: "xmark.circle.fill")
                        .font(.largeTitle)
                        .foregroundColor(.gray)
                        .padding()
                }
            }
            
            TextField("Enter your journal entry...", text: $currentEntry)
                .padding()
                .border(Color.gray, width: 0.5)
            
            Button("Save Entry") {
                if !currentEntry.isEmpty {
                    entries.append(currentEntry)
                    currentEntry = ""
                }
                dismiss()  // Dismiss after saving
            }
            .padding()
        }
    }
}

