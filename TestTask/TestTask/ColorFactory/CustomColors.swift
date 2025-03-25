//
//  CustomColors.swift
//  TestTask
//
//  Created by Pedro Ramos on 24/03/25.
//

import SwiftUI
import UIKit

protocol CustomColorsProtocol {
    var base: Color { get }
    var dark: Color { get }
    var light: Color { get }
    var base48: Color { get }
    var base60: Color { get }
    var base87: Color { get }
}

extension CustomColorsProtocol {
    var dark: Color { Color.clear }
    var light: Color { Color.clear }
    var base48: Color { base.opacity(0.48) }
    var base60: Color { base.opacity(0.60) }
    var base87: Color { base.opacity(0.87) }
}
