//
//  MockupApiService.swift
//  newyorktimesTests
//
//  Created by 1135794 on 29/01/25.
//

import Foundation


final class MockupApiService {

	var requestGetError = false

	func getMockMostViewBy(period: Int, completion: @escaping (Result<[String], Error>) -> Void) {
		if requestGetError {
			completion(.failure(NSError(domain: "ApiError", code: 409 , userInfo: ["description": "Servicios no alcanzados."])))
		} else {
			completion(.success(["Regresara", "Objeto", "Mapeado"]))
		}

	}


}
