//
//  SmallTileView.swift
//  upwork
//
//  Created by Gatien DIDRY on 06/01/2023.
//

import SwiftUI

struct SmallTileView: View {

    var viewModel: SmallTileViewModel

    init(viewModel: SmallTileViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {
        VStack {
            Text(self.viewModel.topWord)
                .font(.title3)
                .bold()
            Text(self.viewModel.subWord)
                .font(.system(size: 12))

        }
        .frame(width: 60)
        .padding([.top, .bottom], 16)
        .padding([.leading, .trailing], 12)
        .background(Color(UIColor(named: "LightBlueGrayColor")!))
        .cornerRadius(10)

    }
}
