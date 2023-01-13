//
//  EmployeeDataRecord.swift
//  upwork
//
//  Created by Gatien DIDRY on 13/01/2023.
//

import Foundation

struct EmployeeDataRecord: Codable {
    let id, name: String
    let records: [Record]
}
