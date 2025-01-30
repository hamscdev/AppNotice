//
//  ContentViewModel.swift
//  newyorktimes
//
//  Created by 1135794 on 28/01/25.
//

import Foundation
import SwiftUI

class ContentViewModel: ObservableObject {

	@Published var contentView: [IdentifiableContentView] = []
	@Published var isNetworkAlert: Bool = false

	let apiManager = ApiManager()


	func getNoticesByPeriod(_ period: Int) {
		self.contentView = []
		self.isNetworkAlert = !NetworkMonitor.shared.isConnected()
		if !self.isNetworkAlert {
			self.apiManager.getMostViewedBy(period: period){ [weak self] result in
				guard let self = self else { return }
				switch result {
					case .success(let responseModel):
						self.extractResponseModel(responseModel: responseModel)
					case .failure(let error):
						print("Este es el mensaje de error:  \(error.localizedDescription)")
				}
			}
		}
	}

	private func extractResponseModel(responseModel: ResponseModel) {
		for responseItem in responseModel.results {
			let titleCard = responseItem.title
			let description = responseItem.abstract
			contentView.append(IdentifiableContentView(title: titleCard,
													   description: description,
													   imageURL: getImageURL(media: responseItem.media)))
		}
	}

	func closeAlert() {
		self.isNetworkAlert = false
	}

	private func getImageURL(media: [Media]) -> URL? {
		if let stringURL = media.first?.mediaMetadata.first(where: {$0.format == "mediumThreeByTwo440"})?.url {
			return URL(string: stringURL)
		}
		return nil
	}

}
