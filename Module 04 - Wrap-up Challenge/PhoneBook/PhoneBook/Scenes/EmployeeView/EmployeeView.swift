//
//  EmployeeView.swift
//  PhoneBook
//
//  Created by ヒットり on 9/30/23.
//

import SwiftUI

struct EmployeeView: View {
    var employees: [Employee]
    
    var body: some View {
        List(employees) { employee in
            EmployeeCardView(employee: employee)
        }
        .listStyle(.plain)
        .navigationTitle("Employees")
    }
}

#Preview {
    let dataService = DataService()
    return EmployeeView(employees: dataService
        .getFileData()
        .companies[0]
        .departments[0]
        .employees
    )
}
