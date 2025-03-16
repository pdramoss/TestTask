//
//  NunitoBoldFactory.swift
//  TestTask
//
//  Created by Pedro Ramos on 16/03/25.
//

import SwiftUI

public class NunitoBoldFactory: CustomFontsProtocol {
    private init() {}
    
    static let instance = NunitoBoldFactory()
    var fontStyle: CustomFontStyle = .bold
    
    func h01() -> Font {
        Font.custom(fontStyle.fontName, size: CustomFontSize.heading01.rawValue)
    }
    
    func b01() -> Font {
        Font.custom(fontStyle.fontName, size: CustomFontSize.body01.rawValue)
    }
    
    func b02() -> Font {
        Font.custom(fontStyle.fontName, size: CustomFontSize.body02.rawValue)
    }
    
    func b03() -> Font {
        Font.custom(fontStyle.fontName, size: CustomFontSize.body03.rawValue)
    }
}
