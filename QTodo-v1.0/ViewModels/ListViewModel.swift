//
//  ListViewModel.swift
//  QTodo-v1.0
//
//  Created by Mehmet Kubilay Akdemir on 14.06.2023.
//

import Foundation

class ListViewModel: ObservableObject {
    
    @Published var todos: [TodoModel] = [] {
        didSet {
            saveTodos()
        }
    }
    
    init() {
        getTodos()
    }
    
//    func getTodos(){
//        if let savedTodosData = UserDefaults.standard.data(forKey: "todos") {
//            let decoder = JSONDecoder()
//            if let savedTodos = try? decoder.decode([TodoModel].self, from: savedTodosData) {
//                todos = savedTodos
//                return
//            }
//        }
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
    
    func saveTodos(){
        let encoder = JSONEncoder()
        if let encodedTodos = try? encoder.encode(todos) {
            UserDefaults.standard.set(encodedTodos, forKey: "todos")
        }
    }
}
