//
//  CardWeekDataViewModel.swift
//  upwork
//
//  Created by Gatien DIDRY on 26/01/2023.
//

import SwiftUI
final class WeekDataCardViewModel: ObservableObject {

    var image: String

    var dataText: String

    var subText: String

    var isAlignVertically: Bool

    init(image: String, dataText: String, subText: String, isAlignVertically: Bool = true) {
        self.image = image
        self.dataText = dataText
        self.subText = subText
        self.isAlignVertically = isAlignVertically
    }
}
