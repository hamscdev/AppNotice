//
//  NetworkAlert.swift
//  newyorktimes
//
//  Created by 1135794 on 29/01/25.
//

import Foundation
import SwiftUI

struct NetworkAlert: View {

	var body: some View {
		VStack {
				HStack {
					Image(systemName: "wifi.slash")
						.foregroundColor(.white)
					Text("Sin conexión a Internet")
						.foregroundColor(.white)
						.font(.headline)
				}
				.padding()
				.frame(maxWidth: .infinity)
				.background(Color.red)
				.cornerRadius(10)
				.padding()
				.transition(.slide)
		}


	}
}
