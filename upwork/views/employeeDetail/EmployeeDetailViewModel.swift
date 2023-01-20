//
//  EmployeeDetailViewModel.swift
//  upwork
//
//  Created by Gatien DIDRY on 06/01/2023.
//

import Foundation

class EmployeeDetailViewModel: ObservableObject {
    var idUser: String

    @Published var detailUser: DetailEmployeeData?

    init(idUser: String) {
        self.idUser = idUser
        Task {
            do {
                detailUser = try await ApiService.getEmployeeDetails(idEmployee: idUser)
            } catch {
                print(error)
            }
        }

    }
}
