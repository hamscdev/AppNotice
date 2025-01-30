//
//  ButtonsDays.swift
//  newyorktimes
//
//  Created by 1135794 on 28/01/25.
//

import Foundation
import SwiftUI


struct ButtonsDays: View {
	var textDay: String
	var action: () -> Void
	var body: some View {
		Button(action: action, label: {
			Text(textDay)
				.padding(.vertical, 5)
				.padding(.horizontal, 10)
				.font(.caption2)
				.foregroundColor(Color.purple)
				.overlay {
					RoundedRectangle(cornerRadius: 25)
						.stroke(Color.purple, lineWidth: 0.5)

				}

		}).accessibility(identifier: "\(textDay)button")
	}
}
