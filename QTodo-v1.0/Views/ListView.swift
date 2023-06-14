//
//  ListView.swift
//  QTodo-v1.0
//
//  Created by Mehmet Kubilay Akdemir on 14.06.2023.
//

import SwiftUI

struct ListView: View {
    
    @State private var todos: [TodoModel] = [
        TodoModel(content: "firstTodo", isCompleted: true),
        TodoModel(content: "secondTodo", isCompleted: false),TodoModel(content: "qweqweqw", isCompleted: false),
        TodoModel(content: "asdasdas", isCompleted: false),TodoModel(content: "faggfgfgf", isCompleted: true),
        TodoModel(content: "eererere", isCompleted: true)
    ]
    
    var body: some View {
        ZStack{
            List {
                ForEach(todos) { todo in
                    TodoView(todo: todo)
                }
                .padding(.vertical, 5)
            }
            .listStyle(.grouped) 
        }
        
        .navigationTitle("QTodo v1.0")
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink {
                    AddTodoView()
                } label: {
                    Image(systemName: "plus.circle.fill")
                        .tint(.primary)
                }
            }

        }

    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            ListView()
        }
    }
}
