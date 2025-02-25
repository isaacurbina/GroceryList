//
//  Item.swift
//  Grocery List
//
//  Created by Isaac Urbina on 2/25/25.
//

import Foundation
import SwiftData

@Model
class Item {
	var title: String
	var isCompleted: Bool
	
	init(title: String, isCompleted: Bool) {
		self.title = title
		self.isCompleted = isCompleted
	}
}
