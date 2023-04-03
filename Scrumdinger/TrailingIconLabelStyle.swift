//
//  TrailingIconLabelStyle.swift
//  Scrumdinger
//
//  Created by Belghit Haron on 3/4/2023.
//

import Foundation
import SwiftUI

struct TrailingIconLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            configuration.icon
        }
    }
}
// defininge label style as a static property makes us able to call it using leading-dot syntax

extension LabelStyle where Self == TrailingIconLabelStyle {
    static var trailingIcon: Self { Self() }
}
