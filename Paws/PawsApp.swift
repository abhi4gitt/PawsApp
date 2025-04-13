//
//  PawsApp.swift
//  Paws
//
//  Created by Abhishek on 13/04/25.
//

import SwiftUI
import SwiftData

@main
struct PawsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Pet.self)
        }
    }
}
