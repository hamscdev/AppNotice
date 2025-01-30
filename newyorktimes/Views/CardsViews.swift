//
//  CardsViews.swift
//  newyorktimes
//
//  Created by 1135794 on 28/01/25.
//

import Foundation
import SwiftUI


struct CardsViews: View {

	var title: String
	var url: URL?
	var description: String
	var body: some View {
		VStack {
			Text(title)
				.font(Font.system(size: 14).weight(.bold))

			AsyncImage(url: url){ phase in
				switch phase {
					case .empty:
						Progress()
					case .success(let image):
						image.resizable().cornerRadius(10).frame(maxHeight: 200)
					case .failure(let error):
						Text("Image Not found")
					@unknown default:
						Text("Image Not found")
				}
			}
			Text(description).font(.footnote)


		}.padding()
		.background(Color.white)
		.cornerRadius(10)
		.shadow(color: .gray, radius: 10, x: 0 , y: 3)
	}
}

