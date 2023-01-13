//
//  ApiService.swift
//  upwork
//
//  Created by Gatien DIDRY on 12/01/2023.
//

import Foundation

class ApiService {
    static let domain = "http://10.33.3.14:3000/"
    static func getEmpoloyees() async throws -> [Employee] {
        let url = domain + "api/employees"

        guard let url = URL(string: url) else {
            throw ApiError.urlError
        }

        let urlRequest = URLRequest(url: url, cachePolicy: .reloadIgnoringCacheData, timeoutInterval: 1000)

        let (data, _) = try await URLSession.shared.data(for: urlRequest)
        return try JSONDecoder().decode([Employee].self, from: data)

    }

}
