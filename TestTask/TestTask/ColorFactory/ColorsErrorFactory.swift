//
//  ColorsErrorFactory.swift
//  TestTask
//
//  Created by Pedro Ramos on 24/03/25.
//

import SwiftUI

public class ColorsErrorFactory: CustomColorsProtocol {
    private init() {}
    static let instance = ColorsErrorFactory()
    
    var base: Color {
        Color.styleError
    }
}
