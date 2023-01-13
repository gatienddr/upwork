//
//  upworkApp.swift
//  upwork
//
//  Created by Gatien DIDRY on 06/01/2023.
//

import SwiftUI

@main
struct UpworkApp: App {

    init() {

        print("lanching app")

        Task {
            do {
                
            print(try await ApiService.receiveData())

        } catch {
            print("error dans le catch")
        }

        }

    }
    var body: some Scene {
        WindowGroup {
            TabbarView(viewModel: TabbarViewModel())
        }
    }
}
