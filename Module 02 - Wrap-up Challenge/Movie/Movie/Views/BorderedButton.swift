//
//  BorderedButton.swift
//  Movie
//
//  Created by CodeWithChris on 9/8/23.
//

import SwiftUI

struct BorderedButton: View {
    @State var title: String = "Button"
    @State var borderColor: Color = .blue
    var action: () -> Void
    
    var body: some View {
        Button(action: action, label: {
            Text(title)
                .padding()
                .border(borderColor)
        })
    }
}

#Preview {
    BorderedButton(title: "Hello", borderColor: .red, action: {})
}
