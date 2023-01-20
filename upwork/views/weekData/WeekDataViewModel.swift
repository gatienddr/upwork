//
//  WeekDataViewModel.swift
//  upwork
//
//  Created by Louis Cauret on 06/01/2023.
//

import Foundation
import SwiftUI

class WeekDataViewModel: ObservableObject {

    @Published var weekData: WeekData?
    init() {
        print("weekData init")
        Task {
            do {
                weekData = try await ApiService.getWeedData()
            } catch {
                print(error)
            }
        }
    }
}
