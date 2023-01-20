//
//  ApiService.swift
//  upwork
//
//  Created by Gatien DIDRY on 12/01/2023.
//

import Foundation

class ApiService {
    static let domain = "http://172.20.10.3:3000/"

    static func getEmpoloyees() async throws -> [Employee] {

        let data = try await prepareUrlRequest(uri: "api/employees")

        return try JSONDecoder().decode([Employee].self, from: data)

    }

    static func getEmployeeDetails (idEmployee: String) async throws -> DetailEmployeeData {

        let data = try await prepareUrlRequest(uri: "api/employee/"+String(idEmployee))

        return try JSONDecoder().decode(DetailEmployeeData.self, from: data)

    }

    static func prepareUrlRequest(uri: String) async throws -> Data {

        let url = domain + uri

        guard let url = URL(string: url) else {
            throw ApiError.urlError
        }

        let urlRequest = URLRequest(url: url, cachePolicy: .reloadIgnoringCacheData, timeoutInterval: 1000)

        let (data, _) = try await URLSession.shared.data(for: urlRequest)

        return data

    }

}
