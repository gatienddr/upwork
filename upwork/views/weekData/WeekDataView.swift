//
//  WeekDataView.swift
//  upwork
//
//  Created by Louis Cauret on 06/01/2023.
//

import SwiftUI

struct WeekDataView: View {

    @ObservedObject private var viewModel: WeekDataViewModel

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
                WeekDataCard(
                    viewModel: WeekDataCardViewModel(
                        image: "working-time",
                        dataText: String(
                            format: "%.0f heures",
                            viewModel.weekData?.hoursWorked ?? 0
                        ),
                        subText: "",
                        isAlignVertically: false
                    )
                )
                HStack {
                    WeekDataCard(
                        viewModel: WeekDataCardViewModel(
                            image: "diagram",
                            dataText: "\((viewModel.weekData?.numberOfEmployees ?? 0)) heures par",
                            subText: "employé.e.(s)"
                        )
                    )
                    WeekDataCard(
                        viewModel: WeekDataCardViewModel(
                            image: "diagram",
                            dataText:
                                String(
                                    format: "%.0f heures par",
                                    viewModel.weekData?.averageWorkedHoursByEmployee ?? 0
                                ),
                            subText: "employé.e.(s)"
                        )
                    )
                }
                HStack {
                    WeekDataCard(
                        viewModel: WeekDataCardViewModel(
                            image: "vacation",
                            dataText: "2 employé.e.(s)",
                            subText: "en congés"
                        )
                    )
                    WeekDataCard(
                        viewModel: WeekDataCardViewModel(
                            image: "clock",
                            dataText:
                                String(
                                    format: "%.0f heures",
                                    viewModel.weekData?.hoursWorkedByDay ?? 0
                                ),
                            subText: "par jour"
                        )
                    )
                }
            }
        }
    }
}
