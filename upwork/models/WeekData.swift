//
//  WeekData.swift
//  upwork
//
//  Created by Louis Cauret on 07/01/2023.
//

import Foundation

struct WeekData: Codable {
    var hoursWorked: String?
    var numberOfEmployees: Int?
    var averageWorkedHoursByEmployee: Float?
    var hoursWorkedByDay: Float?
}
