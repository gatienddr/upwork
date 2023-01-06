//
//  EmployeesListViewModel.swift
//  upwork
//
//  Created by Gatien DIDRY on 06/01/2023.
//

import Foundation

class EmployeesListViewModel: ObservableObject {

    @Published var employees: [Employee] = [
        Employee(firstname: "Clément", lastname: "Dudit", isWorking: true),
        Employee(firstname: "Louis", lastname: "Cauret", isWorking: true),
        Employee(firstname: "Antoine", lastname: "Lucchini", isWorking: false),
        Employee(firstname: "Gatien", lastname: "Didry", isWorking: true),
        Employee(firstname: "Marie", lastname: "Dugoua", isWorking: true)
    ]

}
