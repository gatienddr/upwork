//
//  ApiService.swift
//  upwork
//
//  Created by Gatien DIDRY on 12/01/2023.
//

import Foundation

class ApiService {

    static let url = "http://10.33.10.193:3000/api/employees"

    static func receiveData() async throws -> [EmployeeDataRecord] {

        guard let url = URL(string: url) else {
            throw ApiError.urlError
        }

        let urlRequest = URLRequest(url: url, cachePolicy: .reloadIgnoringCacheData, timeoutInterval: 1000)

        let (data, _) = try await URLSession.shared.data(for: urlRequest)

        
           return try JSONDecoder().decode([EmployeeDataRecord].self, from: data)

    }

}
