//
//  ListViewModel.swift
//  QTodo-v1.0
//
//  Created by Mehmet Kubilay Akdemir on 14.06.2023.
//

import Foundation

class ListViewModel: ObservableObject {
    
    @Published var todos: [TodoModel] = []
    
    init() {
        getTodos()
    }
    
    func getTodos(){
        let todoNumberOne = TodoModel(content: "firstTodo", isCompleted: true)
        let todoNumberTwo = TodoModel(content: "secondTodo", isCompleted: false)
        let todoNumberThree = TodoModel(content: "asdasdas", isCompleted: false)
        let todoNumberFour = TodoModel(content: "faggfgfgf", isCompleted: true)
        
        todos.append(contentsOf: [todoNumberOne, todoNumberTwo, todoNumberThree, todoNumberFour])
    }
}
