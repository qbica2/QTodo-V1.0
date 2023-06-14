//
//  TodoModel.swift
//  QTodo-v1.0
//
//  Created by Mehmet Kubilay Akdemir on 14.06.2023.
//

import Foundation

struct TodoModel: Identifiable, Codable {
    let id: String
    let content: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString ,content: String, isCompleted: Bool) {
        self.id = id
        self.content = content
        self.isCompleted = isCompleted
    }
    
    func toggleCompletion() -> TodoModel {
        return TodoModel(id: id, content: content, isCompleted: !isCompleted)
    }
}
