//
//  EmployeesList.swift
//  upwork
//
//  Created by Gatien DIDRY on 06/01/2023.
//

import SwiftUI

struct EmployeesListView: View {

    private var viewModel: EmployeesListViewModel

    init(viewModel: EmployeesListViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {
        Text("Employee list")
    }
}
