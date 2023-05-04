//
//  UserModel.swift
//  API Practice
//
//  Created by Justin on 5/3/23.
//

import Foundation

struct User: Codable, Identifiable {
    let id: Int
    let name: String
    let email: String
    let company: Company
}

struct Company: Codable {
    let name: String
}
