//
//  BookReaderSwiftUIApp.swift
//  BookReaderSwiftUI
//
//  Created by Omar Tharwat on 06/01/2023.
//

import SwiftUI

@main
struct BookReaderSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            SplashScreenView().environmentObject(AppSettings())
        }
    }
}
