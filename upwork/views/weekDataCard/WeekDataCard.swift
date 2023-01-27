//
//  CardWeekData.swift
//  upwork
//
//  Created by Gatien DIDRY on 26/01/2023.
//

import SwiftUI

struct WeekDataCard: View {

    @ObservedObject var viewModel: WeekDataCardViewModel

    init(viewModel: WeekDataCardViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {

        if viewModel.isAlignVertically {
            VStack(alignment: .center) {
                getContent()
            }
            .frame(maxWidth: .infinity, alignment: .center)
            .frame(minHeight: 150)
            .background(Color(red: 32/255, green: 36/255, blue: 38/255))
            .cornerRadius(20)
            .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 0)
            .frame(height: 150)
            .padding(.all, 10)

        } else {

            HStack(alignment: .center) {
                Spacer()
                getContent()
                Spacer()
            }
            .background(Color(red: 32/255, green: 36/255, blue: 38/255))
            .cornerRadius(20)
            .shadow(color: Color.black.opacity(0.2), radius: 20, x: 0, y: 0)
            .padding(.all, 10)
        }

    }

    @ViewBuilder
    func getContent() -> some View {
        Image(viewModel.image)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: viewModel.isAlignVertically ? 80 : 150)
            .padding(.top, 20)
            .padding(.bottom, viewModel.isAlignVertically ? 0 : 20)
        Text(viewModel.dataText)
            .font(.system(size: viewModel.isAlignVertically ? 18 : 23, weight: .bold, design: .default))
            .foregroundColor(.white)
        Text(viewModel.subText)
            .font(.system(size: viewModel.isAlignVertically ? 18 : 23, weight: .bold, design: .default))
            .foregroundColor(.white)
            .padding(.bottom, 20)
    }

}
