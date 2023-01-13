//
//  EmployeesListViewModel.swift
//  upwork
//
//  Created by Gatien DIDRY on 06/01/2023.
//

import Foundation

@MainActor class EmployeesListViewModel: ObservableObject {

    @Published var employees: [Employee] = []
    init() {
        Task {
            do {
                self.employees = try await ApiService.getEmpoloyees()
            } catch {
                print(error)
                print("error dans le catch")
            }
        }
    }
}
