//
//  newyorktimesTests.swift
//  newyorktimesTests
//
//  Created by 1135794 on 29/01/25.
//

import XCTest
@testable import newyorktimes


final class newyorktimesTests: XCTestCase {


	let apiManager = ApiManager()
	let mockupApi = MockupApiService()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {

		apiManager.getMostViewedBy(period: 1) {  result in
			switch result {
				case .success(let response):
					XCTAssertFalse(response.results.isEmpty, "El servicio esta funcionando pero no trajo nada")
					XCTAssertGreaterThan(response.results.count,1, "El servicio esta funcionando")

				case .failure(let error):
					XCTFail(error.localizedDescription)
			}
		}


		// prueba de mockup

		mockupApi.getMockMostViewBy(period: 1) { result in
			switch result {
				case .success(let response):
					XCTAssertFalse(response.isEmpty, "El servicio esta funcionando pero no trajo nada")
					XCTAssertGreaterThan(response.count, 1, "El servicio esta funcionando")
				case .failure(let error):
					XCTFail(error.localizedDescription)
			}
		}

    }

}





