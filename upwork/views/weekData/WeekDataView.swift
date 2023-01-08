//
//  WeekDataView.swift
//  upwork
//
//  Created by Gatien DIDRY on 06/01/2023.
//

import SwiftUI

struct WeekDataView: View {

    private var viewModel: WeekDataViewModel

    init(viewModel: WeekDataViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {
        Text("Week data")
    }
}
