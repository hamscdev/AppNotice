//
//  ContentView.swift
//  newyorktimes
//
//  Created by Hector Moreno on 28/01/25.
//

import SwiftUI

struct ContentView: View {
	@StateObject private var viewModel = ContentViewModel()

    var body: some View {
        VStack {
			HStack {
				TextNoticeView()
				ButtonsDays(textDay: "1 day") {
					viewModel.getNoticesByPeriod(1)
				}
				ButtonsDays(textDay: "7 days") {
					viewModel.getNoticesByPeriod(7)
				}
				ButtonsDays(textDay: "30 days") {
					viewModel.getNoticesByPeriod(30)
				}
			}
			ScrollView {
				ForEach(viewModel.contentView) { task in
					CardsViews(title: task.title, url: task.imageURL ?? nil, description: task.description).padding()
				}
			}

		}.alert(isPresented: $viewModel.isNetworkAlert) {
			Alert(title: Text("Conexión Inestable"),
				  message: Text("Tu conexión es inestable, favor de verificarla."),
				  dismissButton: .default(Text("Aceptar"), action: {
				self.viewModel.closeAlert()
			}))
		}
	}
}

#Preview {
    ContentView()
}
