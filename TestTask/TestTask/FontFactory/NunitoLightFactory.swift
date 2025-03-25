//
//  NunitoLightFactory.swift
//  TestTask
//
//  Created by Pedro Ramos on 16/03/25.
//

import SwiftUI

public class NunitoLightFactory: CustomFontsProtocol {
    private init() {}
    
    static let instance = NunitoLightFactory()
    var fontStyle: CustomFontStyle { CustomFontStyle.light }
}
