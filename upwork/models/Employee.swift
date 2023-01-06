//
//  Employee.swift
//  upwork
//
//  Created by Gatien DIDRY on 06/01/2023.
//

import Foundation

class Employee: Identifiable {

    var firstname: String

    var lastname: String

    var isWorking: Bool

    init(firstname: String, lastname: String, isWorking: Bool) {
        self.firstname = firstname
        self.lastname = lastname
        self.isWorking = isWorking
    }
}
