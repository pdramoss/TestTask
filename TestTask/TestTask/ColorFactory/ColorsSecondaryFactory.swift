//
//  ColorsSecondaryFactory.swift
//  TestTask
//
//  Created by Pedro Ramos on 24/03/25.
//

import SwiftUI

public class ColorsSecondaryFactory: CustomColorsProtocol {
    private init() {}
    static let instance = ColorsSecondaryFactory()
    
    var base: Color {
        Color.styleSecondary
    }
    
    var dark: Color {
        Color.styleSecondaryDark
    }
    
    var light: Color {
        Color.styleSecondaryLight
    }
}
