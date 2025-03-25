//
//  ColorsWhiteFactory.swift
//  TestTask
//
//  Created by Pedro Ramos on 24/03/25.
//

import SwiftUI

public class ColorsWhiteFactory: CustomColorsProtocol {
    private init() {}
    static let instance = ColorsWhiteFactory()
    
    var base: Color {
        Color.styleWhite
    }
}
