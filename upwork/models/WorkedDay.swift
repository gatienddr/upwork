//
//  WorkedDay.swift
//  upwork
//
//  Created by Gatien DIDRY on 13/01/2023.
//

import Foundation

struct WorkedDay: Codable, Identifiable {
    let date, workedHours: String

    let id = UUID().uuidString

}
