//
//  ColorsGrayFactory.swift
//  TestTask
//
//  Created by Pedro Ramos on 24/03/25.
//

import SwiftUI

public class ColorsGrayFactory: CustomColorsProtocol {
    private init() {}
    static let instance = ColorsGrayFactory()
    
    var base: Color {
        Color.styleGray
    }
    
    var light: Color {
        Color.styleGrayLight
    }
}
