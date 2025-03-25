//
//  UserModel.swift
//  TestTask
//
//  Created by Pedro Ramos on 29/03/25.
//

struct UserModel: Identifiable {
    let id: Int
    let name: String
    let email: String
    let phone: String
    let position: String
}

extension UserModel {
    static var mockListFull: [UserModel] {
        [
            UserModel(id: 101, name: "Solid LiquidOcelot Solidus Snake 101", email: "outerHeaven101@foxhound.com", phone: "+380000000101", position: "Lawyer"),
            UserModel(id: 102, name: "Solid LiquidOcelot Solidus Snake 102", email: "outerHeaven102@foxhound.com", phone: "+380000000102", position: "Security"),
            UserModel(id: 103, name: "Solid LiquidOcelot Solidus Snake 103", email: "outerHeaven103@foxhound.com", phone: "+380000000103", position: "Content manager"),
            UserModel(id: 104, name: "Solid Snake 104", email: "outerHeaven104@foxhound.com", phone: "+380000000104", position: "Security"),
            UserModel(id: 105, name: "Solid Snake 105", email: "outerHeaven105@foxhound.com", phone: "+380000000105", position: "Security"),
            UserModel(id: 106, name: "Solid Snake 106", email: "outerHeaven106@foxhound.com", phone: "+380000000106", position: "Designer"),
            UserModel(id: 107, name: "Solid Snake 107", email: "outerHeaven107@foxhound.com", phone: "+380000000107", position: "Designer"),
            UserModel(id: 108, name: "Solid Snake 108", email: "outerHeaven108@foxhound.com", phone: "+380000000108", position: "Lawyer"),
            UserModel(id: 109, name: "Solid Snake 109", email: "outerHeaven109@foxhound.com", phone: "+380000000109", position: "Content manager"),
            UserModel(id: 110, name: "Solid Snake 110", email: "outerHeaven110@foxhound.com", phone: "+380000000110", position: "Lawyer"),
            UserModel(id: 111, name: "Solid Snake 111", email: "outerHeaven111@foxhound.com", phone: "+380000000111", position: "Content manager"),
            UserModel(id: 112, name: "Solid Snake 112", email: "outerHeaven112@foxhound.com", phone: "+380000000112", position: "Lawyer"),
            UserModel(id: 113, name: "Solid Snake 113", email: "outerHeaven113@foxhound.com", phone: "+380000000113", position: "Content manager"),
            UserModel(id: 114, name: "Solid Snake 114", email: "outerHeaven114@foxhound.com", phone: "+380000000114", position: "Content manager"),
            UserModel(id: 115, name: "Solid Snake 115", email: "outerHeaven115@foxhound.com", phone: "+380000000115", position: "Content manager"),
            UserModel(id: 116, name: "Solid Snake 116", email: "outerHeaven116@foxhound.com", phone: "+380000000116", position: "Designer"),
            UserModel(id: 117, name: "Solid Snake 117", email: "outerHeaven117@foxhound.com", phone: "+380000000117", position: "Lawyer"),
            UserModel(id: 118, name: "Solid Snake 118", email: "outerHeaven118@foxhound.com", phone: "+380000000118", position: "Designer"),
            UserModel(id: 119, name: "Solid Snake 119", email: "outerHeaven119@foxhound.com", phone: "+380000000119", position: "Designer"),
            UserModel(id: 120, name: "Solid Snake 120", email: "outerHeaven120@foxhound.com", phone: "+380000000120", position: "Lawyer")
        ]
    }
    
    static var mockListShort: [UserModel] {
        [
            UserModel(id: 101, name: "Solid Snake 101", email: "outerHeaven101@foxhound.com", phone: "+380000000101", position: "Lawyer"),
            UserModel(id: 102, name: "Solid Snake 102", email: "outerHeaven102@foxhound.com", phone: "+380000000102", position: "Security"),
            UserModel(id: 103, name: "Solid Snake 103", email: "outerHeaven103@foxhound.com", phone: "+380000000103", position: "Content manager")
        ]
    }
    
    static var mockItem: UserModel {
        mockListFull[0]
    }
}
