//
//  EmployeeDetail.swift
//  upwork
//
//  Created by Gatien DIDRY on 06/01/2023.
//

import SwiftUI

struct EmployeeDetailView: View {

    private var viewModel: EmployeeDetailViewModel

    init(viewModel: EmployeeDetailViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {
        Text("Employee detail")
    }
}
