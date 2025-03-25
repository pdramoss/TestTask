//
//  NunitoExtraBoldFactory.swift
//  TestTask
//
//  Created by Pedro Ramos on 16/03/25.
//

import SwiftUI

public class NunitoExtraBoldFactory: CustomFontsProtocol {
    private init() {}
    
    static let instance = NunitoExtraBoldFactory()
    var fontStyle: CustomFontStyle { CustomFontStyle.extraBold }
}
