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
    
    func deleteTodo(todo: TodoModel) {
        if let index = todos.firstIndex(where: {$0.id == todo.id}) {
            todos.remove(at: index)
        }
    }
    
    func moveTodos(from indexSet: IndexSet, to newIndex: Int) {
        todos.move(fromOffsets: indexSet, toOffset: newIndex)
    }
    
    func addTodo(content: String) {
        let newTodo = TodoModel(content: content, isCompleted: false)
        todos.append(newTodo)
    }
    
    func toggleTodo(todo: TodoModel) {
        if let index = todos.firstIndex(where: {$0.id == todo.id}) {
            todos[index] = todo.toggleCompletion()
        }
    }
}
