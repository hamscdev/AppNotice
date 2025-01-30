//
//  Result.swift
//  newyorktimes
//
//  Created by 1135794 on 28/01/25.
//

import Foundation
import SwiftUI

struct ResultModel: Codable {
	
	let uri: String
	let url: String
	let id, assetID: Int
	let source: String
	let publishedDate, updated, section: String
	let subsection: String
	let nytdsection, adxKeywords: String
	let byline: String
	let type: String
	let title, abstract: String
	let desFacet, orgFacet, perFacet, geoFacet: [String]
	let media: [Media]
	let etaID: Int

	enum CodingKeys: String, CodingKey {
		case uri = "uri"
		case url = "url"
		case id = "id"
		case assetID = "asset_id"
		case source = "source"
		case publishedDate = "published_date"
		case updated = "updated"
		case section = "section"
		case subsection = "subsection"
		case nytdsection = "nytdsection"
		case adxKeywords = "adx_keywords"
		case byline = "byline"
		case type = "type"
		case title = "title"
		case abstract = "abstract"
 		case desFacet = "des_facet"
		case orgFacet = "org_facet"
		case perFacet = "per_facet"
		case geoFacet = "geo_facet"
		case media = "media"
		case etaID = "eta_id"
	}
}


struct Media: Codable {
	let type: String
	let subtype: String
	let caption, copyright: String
	let approvedForSyndication: Int
	let mediaMetadata: [MediaMetadatum]

	enum CodingKeys: String, CodingKey {
		case type = "type"
		case subtype = "subtype"
		case caption = "caption"
		case copyright = "copyright"
		case approvedForSyndication = "approved_for_syndication"
		case mediaMetadata = "media-metadata"
	}
}

struct MediaMetadatum: Codable {
	let url: String
	let format: String
	let height, width: Int

	enum CodingKeys: String, CodingKey {
		case url = "url"
		case format = "format"
		case height = "height"
		case width = "width"
	}
}
