//
//  ContentView.swift
//  upwork
//
//  Created by Gatien DIDRY on 06/01/2023.
//

import SwiftUI

@MainActor struct TabbarView: View {

    private var viewModel: TabbarViewModel

    private var employeesViewModel = EmployeesListViewModel()

    init(viewModel: TabbarViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {
        TabView {
            EmployeesListView(viewModel: employeesViewModel)
                .tabItem {
                    Image(systemName: "person.2")
                }

            WeekDataView(viewModel: WeekDataViewModel())
                .tabItem {
                    Image(systemName: "timer")
                }
        }

    }
}
