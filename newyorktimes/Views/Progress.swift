//
//  Progress.swift
//  newyorktimes
//
//  Created by 1135794 on 28/01/25.
//

import Foundation
import SwiftUI

struct Progress: View {
	var body: some View {
		ProgressView().progressViewStyle(CircularProgressViewStyle(tint: Color.purple)).scaleEffect(1.0)
	}
}
