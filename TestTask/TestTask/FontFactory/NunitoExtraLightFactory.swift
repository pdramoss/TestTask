//
//  NunitoExtraLightFactory.swift
//  TestTask
//
//  Created by Pedro Ramos on 16/03/25.
//

import SwiftUI

public class NunitoExtraLightFactory: CustomFontsProtocol {
    private init() {}
    
    static let instance = NunitoExtraLightFactory()
    var fontStyle: CustomFontStyle { CustomFontStyle.extraLight }
}
