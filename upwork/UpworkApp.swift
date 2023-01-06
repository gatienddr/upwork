//
//  upworkApp.swift
//  upwork
//
//  Created by Gatien DIDRY on 06/01/2023.
//

import SwiftUI

@main
struct UpworkApp: App {
    var body: some Scene {
        WindowGroup {
            TabbarView(viewModel: TabbarViewModel())
        }
    }
}
