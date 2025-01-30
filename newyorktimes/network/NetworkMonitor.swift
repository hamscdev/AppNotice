//
//  NetworkMonitor.swift
//  newyorktimes
//
//  Created by 1135794 on 29/01/25.
//

import Foundation
import Network

class NetworkMonitor {

	static let shared = NetworkMonitor()

	private let pathMonitor = NWPathMonitor()
	private let queue = DispatchQueue.global(qos: .background)

	var isBConnected: Bool = false

	func isConnected() -> Bool {

		pathMonitor.pathUpdateHandler = { [weak self] path in
			guard let self = self else { return }
			self.isBConnected = path.status == .satisfied
		}
		pathMonitor.start(queue: queue)
		return self.isBConnected
	}


}
