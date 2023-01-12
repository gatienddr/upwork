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
        NavigationView {
            List {
                ForEach(self.viewModel.employees) { employee in
                    NavigationLink {
                        EmployeeDetailView(viewModel: EmployeeDetailViewModel())
                            .navigationTitle("\(employee.firstname) \(employee.lastname)")
                    } label: {
                        HStack {
                            VStack {}
                                .frame(width: 10, height: 10)
                                .background(content: {
                                    Color(employee.isWorking ? .green : .red)
                                })
                                .cornerRadius(5)
                            Text("\(employee.firstname) \(employee.lastname)")
                                .padding([.leading], 0.5)
                        }

                    }

                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Text("Time management")
                        .font(.title)
                        .foregroundColor(Color(UIColor(named: "DarkBlueColor")!))
                }
            }

        }
    }
}
