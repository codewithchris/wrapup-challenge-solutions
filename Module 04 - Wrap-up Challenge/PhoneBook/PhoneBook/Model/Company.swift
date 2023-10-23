//
//  Company.swift
//  PhoneBook
//
//  Created by ヒットり on 9/30/23.
//

import Foundation

struct Company: Codable, Identifiable {
    let id = UUID()
    var companyName: String
    var departments: [Department]
    
    enum CodingKeys: String, CodingKey {
        case companyName = "company_name"
        case departments
    }
}
