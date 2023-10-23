//
//  Employee.swift
//  PhoneBook
//
//  Created by ヒットり on 9/30/23.
//

import Foundation

struct Employee: Codable, Identifiable {
    let id = UUID()
    var name: String
    var position: String
    var email: String
    var phone: String
    
    enum CodingKeys: String, CodingKey {
        case name, position, email, phone
    }
}
