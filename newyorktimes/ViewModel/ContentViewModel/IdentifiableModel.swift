//
//  IdentifiableModel.swift
//  newyorktimes
//
//  Created by 1135794 on 28/01/25.
//

import Foundation


struct IdentifiableContentView: Identifiable {
	let id = UUID()
	let title: String
	let description: String
	let imageURL: URL?
}
