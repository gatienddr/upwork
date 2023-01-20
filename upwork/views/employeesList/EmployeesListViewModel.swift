//
//  EmployeesListViewModel.swift
//  upwork
//
//  Created by Gatien DIDRY on 06/01/2023.
//

import Foundation

@MainActor class EmployeesListViewModel: ObservableObject {

    @Published var employees: [Employee] = []

    @Published var isConnectedToApi: Bool?

    init() {
        Task {
            do {
                self.employees = try await ApiService.getEmployees()
                self.isConnectedToApi = true
            } catch {
                print(error)
                print("error dans le catch")
                self.isConnectedToApi = false
            }
        }
    }
}
