//
//  JokesData.swift
//  JokesApp
//
//  Created by Ekin Atasoy on 8.11.2022.
//

import Foundation

struct Response: Identifiable,Codable {
    let id = UUID()
    let type: String
    let value: [Value]

}
struct Value: Identifiable,Codable {
    let id: Int
    let joke: String
    //let categories: [Any]

}


