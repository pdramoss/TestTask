//
//  ColorsBlackFactory.swift
//  TestTask
//
//  Created by Pedro Ramos on 24/03/25.
//

import SwiftUI

public class ColorsBlackFactory: CustomColorsProtocol {
    private init() {}
    static let instance = ColorsBlackFactory()
    
    var base: Color {
        Color.styleBlack
    }
}
