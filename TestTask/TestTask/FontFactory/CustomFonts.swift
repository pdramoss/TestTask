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
    var fontStyle: CustomFontStyle { get }
    var h1: Font { get }
    var b1: Font { get }
    var b2: Font { get }
    var b3: Font { get }
}

extension CustomFontsProtocol {
    var h1: Font {
        Font.custom(fontStyle.fontName, size: CustomFontSize.heading01.rawValue)
    }
    
    var b1: Font {
        Font.custom(fontStyle.fontName, size: CustomFontSize.body01.rawValue)
    }
    
    var b2: Font {
        Font.custom(fontStyle.fontName, size: CustomFontSize.body02.rawValue)
    }
    
    var b3: Font {
        Font.custom(fontStyle.fontName, size: CustomFontSize.body03.rawValue)
    }
}
