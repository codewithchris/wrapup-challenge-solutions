//
//  DepartmentCardView.swift
//  PhoneBook
//
//  Created by ヒットり on 10/23/23.
//

import SwiftUI

struct DepartmentCardView: View {
    var department: Department
    
    // You can choose any color, I just chose random for this as an example
    // or you can use an Image instead of a color, that'll
    // make the app more visually pleasing
    // The color is randomized between 0 to 0.5 (which would guarantee
    // a dark color)
    var backgroundColor = Color(
        red: .random(in: 0...0.5),
        green: .random(in: 0...0.5),
        blue: .random(in: 0...0.5)
    )
    
    var body: some View {
        ZStack {
            RoundedRectangle(
                cornerRadius: 20.0,
                style: .continuous
            )
            .foregroundStyle(backgroundColor)
            
            VStack {
                Text(department.departmentName)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
            }
        }
        .frame(height: 100)
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    DepartmentCardView(department: Department(
        departmentName: "HR",
        employees: []
    ))
}
