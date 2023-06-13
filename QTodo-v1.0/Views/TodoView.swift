//
//  TodoView.swift
//  QTodo-v1.0
//
//  Created by Mehmet Kubilay Akdemir on 14.06.2023.
//

import SwiftUI

struct TodoView: View {
    
    let todo: TodoModel

    var body: some View {
        HStack {
            Text(todo.content.uppercased())
                .font(.headline)
                .opacity(todo.isCompleted ? 0.5 : 1)
            Spacer()
            Image(systemName: todo.isCompleted ? "circle.fill" : "circle")
                .font(.title)
        }
        .listRowBackground(todo.isCompleted ?  Color(UIColor.secondarySystemBackground) : Color.clear )
        
    }
}

struct TodoView_Previews: PreviewProvider {
    static var previews: some View {
        TodoView(todo: TodoModel(content: "aaaa", isCompleted: false))
    }
}
