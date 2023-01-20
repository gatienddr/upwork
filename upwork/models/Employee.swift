//
//  Employee.swift
//  upwork
//
//  Created by Gatien DIDRY on 06/01/2023.
//

import Foundation

class Employee: Identifiable, Codable {

    var id: String

    var name: String

    var isWorking: Bool?

    var records: [Record]?

    init(id: String, name: String, isWorking: Bool?) {
        self.id = id
        self.name = name
        self.isWorking = isWorking
        self.records = []
    }
}
