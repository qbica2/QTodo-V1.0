//
//  TodoModel.swift
//  QTodo-v1.0
//
//  Created by Mehmet Kubilay Akdemir on 14.06.2023.
//

import Foundation

struct TodoModel {
    let id: String = UUID().uuidString
    let content: String
    let isCompleted: Bool
}
