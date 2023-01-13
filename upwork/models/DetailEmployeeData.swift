//
//  DetailEmployeeData.swift
//  upwork
//
//  Created by Gatien DIDRY on 13/01/2023.
//

import Foundation

// MARK: - Welcome
struct DetailEmployeeData: Codable {
    let employee: Employee
        let today: Today
        let workedDays: [WorkedDay]
}
