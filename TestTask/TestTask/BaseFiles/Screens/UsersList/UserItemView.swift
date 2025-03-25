//
//  UserItemView.swift
//  TestTask
//
//  Created by Pedro Ramos on 29/03/25.
//

import SwiftUI

struct UserItemView: View {
    struct VisualValues {
        static var imageName: String = "PhotoCover"
        static var foregroundColor: Color = ColorTask.black.base87
        static var imageFrameSize: CGFloat = 50
        static var imagePaddingTrailing: CGFloat = 8.0
        static var hstackSpacing: CGFloat = 16.0
        static var vstackSpacing: CGFloat = 8.0
        static var vstackNameSpacing: CGFloat = 4.0
        static var paddingHorizontal: CGFloat = 16.0
        static var paddingVertical: CGFloat = 8.0
        static var fontName: Font = FontNunito.bold.b1
        static var fontPosition: Font = FontNunito.extraLight.b3
        static var fontOther: Font = FontNunito.regular.b2
    }
    
    var item: UserModel
    init(_ item: UserModel) {
        self.item = item
    }
    
    var body: some View {
        HStack(alignment: .top, spacing: VisualValues.hstackSpacing) {
            Image(VisualValues.imageName)
                .frame(width: VisualValues.imageFrameSize, height: VisualValues.imageFrameSize)
                .padding(.trailing, VisualValues.imagePaddingTrailing)
            VStack(alignment: .leading, spacing: VisualValues.vstackSpacing) {
                VStack(alignment: .leading,spacing: VisualValues.vstackNameSpacing) {
                    Text(item.name)
                        .font(VisualValues.fontName)
                    Text(item.position)
                        .font(VisualValues.fontPosition)
                }
                VStack(alignment: .leading) {
                    Text(item.email)
                        .font(VisualValues.fontOther)
                    Text(item.phone)
                        .font(VisualValues.fontOther)
                }
            }.foregroundStyle(VisualValues.foregroundColor)
        }
        .padding(.horizontal, VisualValues.paddingHorizontal)
        .padding(.vertical, VisualValues.paddingVertical)
    }
}

#Preview {
    UserItemView(UserModel.mockItem)
}
