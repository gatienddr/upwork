//
//  EmployeeDetail.swift
//  upwork
//
//  Created by Gatien DIDRY on 06/01/2023.
//

import SwiftUI

struct EmployeeDetailView: View {

    @ObservedObject private var viewModel: EmployeeDetailViewModel

    init(viewModel: EmployeeDetailViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {
        VStack(alignment: .leading) {

            Text("Aujourd'hui")
                .font(.subheadline)
                .bold()
                .foregroundColor(Color(UIColor(named: "DarkBlueColor")!))
                .padding()

            HStack {
                Spacer()
                SmallTileView(
                    viewModel: SmallTileViewModel(
                        topWord: "\(viewModel.detailUser?.today.workedHours ?? "🙅🏻")",
                        subWord: "travaillées")
                )

                SmallTileView(
                    viewModel: SmallTileViewModel(
                        topWord: "\(viewModel.detailUser?.today.credit ?? "🙅🏻")",
                        subWord: "crédit")
                )
                .padding([.leading], 2)

                SmallTileView(
                    viewModel: SmallTileViewModel(
                        topWord: "\(viewModel.detailUser?.today.startHour ?? "🙅🏻")",
                        subWord: "arrivée")
                )
                .padding([.leading], 2)

                SmallTileView(
                    viewModel: SmallTileViewModel(
                        topWord: "\(viewModel.detailUser?.today.endHour ?? "🙅🏻")",
                        subWord: "départ")
                )
                .padding([.leading], 2)

                Spacer()
            }

            Text("Résumé")
                .font(.subheadline)
                .bold()
                .foregroundColor(Color(UIColor(named: "DarkBlueColor")!))
                .padding()

            List {
                ForEach(viewModel.detailUser?.workedDays ?? []) { workedDay in
                        HStack {
                            Text("\(workedDay.date)")
                            Spacer()
                            Text("\(workedDay.workedHours)")
                        }
                    }

            }

        }

    }

}
