//
//  ContentView.swift
//  Paws
//
//  Created by Abhishek on 13/04/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) var modelContext
    @Query private var pets: [Pet]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                EmptyView()
            } //: SCROLLVIEW
                    .overlay {
                        if pets.isEmpty {
                            CustomContentUnavailableView(icon: "dog.circle", title: "No Pets", description: "Add a new pet go get started.")
                        }
                    }
        } //: NAVSTACK
    }
}

#Preview("No Data") {
    ContentView()
        .modelContainer(for: Pet.self, inMemory: true)
}
