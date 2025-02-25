//
//  Grocery_ListApp.swift
//  Grocery List
//
//  Created by Isaac Urbina on 2/25/25.
//

import SwiftUI
import SwiftData

@main
struct Grocery_ListApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
				.modelContainer(for: Item.self)
        }
    }
}
