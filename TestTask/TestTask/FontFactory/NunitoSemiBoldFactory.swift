//
//  NunitoSemiBoldFactory.swift
//  TestTask
//
//  Created by Pedro Ramos on 16/03/25.
//

import SwiftUI

public class NunitoSemiBoldFactory: CustomFontsProtocol {
    private init() {}
    
    static let instance = NunitoSemiBoldFactory()
    var fontStyle: CustomFontStyle { CustomFontStyle.semiBold }
}
