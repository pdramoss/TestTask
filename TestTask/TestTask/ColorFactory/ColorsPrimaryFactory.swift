//
//  ColorsPrimaryFactory.swift
//  TestTask
//
//  Created by Pedro Ramos on 24/03/25.
//

import SwiftUI

public class ColorsPrimaryFactory: CustomColorsProtocol {
    private init() {}
    static let instance = ColorsPrimaryFactory()
    
    var base: Color {
        Color.stylePrimary
    }
    
    var dark: Color {
        Color.stylePrimaryDark
    }
    
    var light: Color {
        Color.stylePrimaryLight
    }
}
