//
//  ContentView.swift
//  upwork
//
//  Created by Gatien DIDRY on 06/01/2023.
//

import SwiftUI

struct TabbarView: View {

    private var viewModel: TabbarViewModel

    init(viewModel: TabbarViewModel) {
        self.viewModel = viewModel
#if os(iOS)
        UITabBar.appearance().backgroundColor = UIColor(named: "DarkBlueColor")
#endif
    }

    var body: some View {
        TabView {
            EmployeesListView(viewModel: EmployeesListViewModel())
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
