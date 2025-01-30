//
//  ResponseModel.swift
//  newyorktimes
//
//  Created by Hector Moreno on 28/01/25.
//

import Foundation
import SwiftUI

struct ResponseModel: Codable {
	let status, copyright: String
	let numResults: Int
	let results: [ResultModel]

	enum CodingKeys: String, CodingKey {
		case status, copyright
		case numResults = "num_results"
		case results
	}
}
