//
//  NunitoBlackFactory.swift
//  TestTask
//
//  Created by Pedro Ramos on 16/03/25.
//

import SwiftUI

public class NunitoBlackFactory: CustomFontsProtocol {
    private init() {}
    
    static let instance = NunitoBlackFactory()
    var fontStyle: CustomFontStyle { CustomFontStyle.black }
}
