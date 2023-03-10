//
//  EmployeesList.swift
//  upwork
//
//  Created by Gatien DIDRY on 06/01/2023.
//

import SwiftUI

struct EmployeesListView: View {

    @ObservedObject private var viewModel: EmployeesListViewModel

    init(viewModel: EmployeesListViewModel) {
        self.viewModel = viewModel
    }
    var body: some View {
        NavigationView {
            List {
                if !(viewModel.isConnectedToApi != nil && viewModel.isConnectedToApi == true ) {

                    HStack {
                        Text("Erreur dans la connexion à l'api")
                            .foregroundColor(.white)
                    }
                    .background(.red)

                }
                ForEach(self.viewModel.employees) { employee in

                    NavigationLink {
                        EmployeeDetailView(viewModel: EmployeeDetailViewModel(idUser: employee.id))
                            .navigationTitle("\(employee.name)")
                    } label: {
                        HStack {
                            VStack {}
                                .frame(width: 10, height: 10)
                                .background(content: {
                                    Color(employee.isWorking ?? false ? .green : .red)
                                })
                                .cornerRadius(5)
                            Text("\(employee.name)")
                                .padding([.leading], 0.5)
                        }

                    }

                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Text("Upwork")
                        .font(.title)
                        .foregroundColor(Color(UIColor(named: "DarkBlueColor")!))
                }
            }

        }
    }
}
