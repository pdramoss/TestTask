//
//  FontFactory.swift
//  TestTask
//
//  Created by Pedro Ramos on 16/03/25.
//

import SwiftUI

enum CustomFontStyle: String {
    case black = "-Black"
    case bold = "-Bold"
    case extraBold = "-ExtraBold"
    case extraLight = "-ExtraLight"
    case light = "-Light"
    case regular = "-Regular"
    case semiBold = "-SemiBold"
    
    var fontName: String {
        return "NunitoSans" + self.rawValue
    }
}

enum CustomFontSize: CGFloat {
    case heading01 = 20.0
    case body01 = 18.0
    case body02 = 16.0
    case body03 = 14.0
}

protocol CustomFontsProtocol {
    var fontStyle: CustomFontStyle { get set }
    func h01() -> Font
    func b01() -> Font
    func b02() -> Font
    func b03() -> Font
}
