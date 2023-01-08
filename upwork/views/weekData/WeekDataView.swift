//
//  WeekDataView.swift
//  upwork
//
//  Created by Louis Cauret on 06/01/2023.
//

import SwiftUI

struct WeekDataView: View {
    
    private var viewModel: WeekDataViewModel
    
    init(viewModel: WeekDataViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        ScrollView {
            Text("Cette semaine")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.primary)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            VStack {
                HoursCard(image: "working-time", hours: 1250)
                HStack {
                    EmployeesCard(image: "division", numberEmployees: 5)
                    HoursPerEmployeeCard(image: "diagram", hours: 35)
                }
                HStack {
                    EmployeeInVacationCard(image: "vacation", numberOfEmployeeInVacation: 2)
                    NumberOFHoursPerDayCard(image: "clock", hours: 210)
                }
            }
        }
        .padding(.all, 20)
    }
}
