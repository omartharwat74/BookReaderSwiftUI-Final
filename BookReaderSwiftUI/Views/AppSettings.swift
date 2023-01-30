//
//  AppSettings.swift
//  BookReaderSwiftUI
//
//  Created by Omar Tharwat on 06/01/2023.
//

import Foundation

class AppSettings: ObservableObject {
    @Published var currentSubMenu = 1
    @Published var currentMenu = 1
    @Published var font = "Avenir"
    @Published var settingMenu = true
    @Published var colorIndex = 1
    
    let colors = ["#DBE1F0","#FFFFFF","#D8D3D6","#EDDB76","#ECD0B2","#B68ADA","#ADF094","#FF0000"]
}

