//
//  SmallTileViewModel.swift
//  upwork
//
//  Created by Gatien DIDRY on 06/01/2023.
//

import Foundation

class SmallTileViewModel: ObservableObject {

    init(topWord: String, subWord: String) {
        self.topWord = topWord
        self.subWord = subWord
    }

    @Published var topWord: String

    @Published var subWord: String
}
