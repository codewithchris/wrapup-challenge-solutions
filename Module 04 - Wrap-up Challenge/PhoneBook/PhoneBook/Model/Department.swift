//
//  Department.swift
//  PhoneBook
//
//  Created by ヒットり on 9/30/23.
//

import Foundation

struct Department: Codable, Identifiable {
    let id = UUID()
    var departmentName: String
    var employees: [Employee]
    
    enum CodingKeys: String, CodingKey {
        case departmentName = "department_name"
        case employees
    }
}
