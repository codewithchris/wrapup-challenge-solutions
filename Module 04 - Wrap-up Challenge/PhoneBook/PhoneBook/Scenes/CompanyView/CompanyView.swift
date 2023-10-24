//
//  ContentView.swift
//  PhoneBook
//
//  Created by ヒットり on 9/28/23.
//

import SwiftUI

struct CompanyView: View {
    @State private var companies = [Company]()
    let dataService = DataService()
    
    var body: some View {
        NavigationStack {
            List(companies) { company in
                NavigationLink {
                    DepartmentView(
                        departments: company.departments
                    )
                } label: {
                    CompanyCardView(
                        company: company
                    )
                }
                .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
            .navigationTitle("Companies")
        }
        .ignoresSafeArea()
        .onAppear {
            companies = dataService.getFileData().companies
        }
    }
}

#Preview {
    CompanyView()
}
