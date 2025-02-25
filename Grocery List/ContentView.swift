//
//  ContentView.swift
//  Grocery List
//
//  Created by Isaac Urbina on 2/25/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
	
	@Environment(\.modelContext) private var modelContext
	@Query private var items: [Item]
	
    var body: some View {
		NavigationStack {
			List {
				ForEach(items) { item in
					Text(item.title)
				}
			}
			.navigationTitle("Grocery List")
			.overlay {
				if items.isEmpty {
					ContentUnavailableView("Empty Cart", systemImage: "cart.circle", description: Text("Add some items to the shopping list."))
				}
			}
		}
    }
}

#Preview {
    ContentView()
		.modelContainer(for: Item.self, inMemory: true)
}
