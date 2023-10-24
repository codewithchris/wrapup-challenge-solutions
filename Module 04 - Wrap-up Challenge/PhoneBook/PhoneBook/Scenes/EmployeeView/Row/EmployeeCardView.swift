//
//  EmployeeCardView.swift
//  PhoneBook
//
//  Created by ヒットり on 10/23/23.
//

import SwiftUI

struct EmployeeCardView: View {
    var employee: Employee
    
    var body: some View {
        ZStack {
            RoundedRectangle(
                cornerRadius: 20.0,
                style: .continuous
            )
            .foregroundStyle(.black)
            
            VStack {
                HStack {
                    Text(employee.name)
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                    
                    Spacer()
                    
                    if let phoneUrl = URL(string: "tel:\(employee.phone.replacingOccurrences(of: " ", with: ""))"),
                       UIApplication.shared.canOpenURL(phoneUrl) {
                        Button {
                            UIApplication.shared.open(phoneUrl)
                        } label: {
                            Image(systemName: "phone.circle.fill")
                                .font(.largeTitle)
                                .foregroundStyle(.white)
                                .frame(width: 48, height: 48)
                        }
                    }
                    
                    if let emailUrl = URL(string: "mailto:\(employee.email)"),
                       UIApplication.shared.canOpenURL(emailUrl) {
                        Button {
                            UIApplication.shared.open(emailUrl)
                        } label: {
                            Image(systemName: "envelope.circle.fill")
                                .font(.largeTitle)
                                .foregroundStyle(.white)
                                .frame(width: 48, height: 48)
                        }
                        .padding(.trailing, 16)
                    }
                }
            }
        }
        .frame(height: 100)
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    let employee = Employee(
        name: "John Appleseed",
        position: "CEO",
        email: "john.appleseed@example.org",
        phone: "+1 234 567 890")
    return EmployeeCardView(employee: employee)
}
