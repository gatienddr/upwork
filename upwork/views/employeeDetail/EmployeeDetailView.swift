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
        VStack(alignment: .leading) {

            Text("Aujourd'hui")
                .font(.subheadline)
                .bold()
                .foregroundColor(Color(UIColor(named: "DarkBlueColor")!))
                .padding()

            HStack {
                Spacer()
                SmallTileView(viewModel: SmallTileViewModel(topWord: "25h", subWord: "travaillées"))

                SmallTileView(viewModel: SmallTileViewModel(topWord: "2h", subWord: "crédit"))
                    .padding([.leading], 2)

                SmallTileView(viewModel: SmallTileViewModel(topWord: "7h30", subWord: "arrivée"))
                    .padding([.leading], 2)

                SmallTileView(viewModel: SmallTileViewModel(topWord: "17h", subWord: "départ"))
                    .padding([.leading], 2)

                Spacer()
            }

            Text("Résumé")
                .font(.subheadline)
                .bold()
                .foregroundColor(Color(UIColor(named: "DarkBlueColor")!))
                .padding()

            List {

                HStack {
                    Text("11 janvier 2022")
                    Spacer()
                    Text("7h30")
                }
                .listRowBackground(Color(UIColor(named: "ListLightGreenColor")!))

                HStack {
                    Text("10 janvier 2022")
                    Spacer()
                    Text("Absent")
                }
                .listRowBackground(Color(UIColor(named: "ListLightRedColor")!))

                HStack {
                    Text("9 janvier 2022")
                    Spacer()
                    Text("Absent")
                }
                .listRowBackground(Color(UIColor(named: "ListLightRedColor")!))

                HStack {
                    Text("8 janvier 2022")
                    Spacer()
                    Text("7h44 travaillées")
                }
                .listRowBackground(Color(UIColor(named: "ListLightGreenColor")!))

                HStack {
                    Text("7 janvier 2022")
                    Spacer()
                    Text("7h44 travaillées")
                }
                .listRowBackground(Color(UIColor(named: "ListLightGreenColor")!))

                HStack {
                    Text("6 janvier 2022")
                    Spacer()
                    Text("7h44 travaillées")
                }
                .listRowBackground(Color(UIColor(named: "ListLightGreenColor")!))

            }

        }

    }

}
