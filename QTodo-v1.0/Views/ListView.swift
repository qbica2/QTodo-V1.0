//
//  ListView.swift
//  QTodo-v1.0
//
//  Created by Mehmet Kubilay Akdemir on 14.06.2023.
//

import SwiftUI

struct ListView: View {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some View {
        ZStack{
            List {
                ForEach(listViewModel.todos) { todo in
                    TodoView(todo: todo)
                        .swipeActions {
                            Button(role: .destructive) {
                                listViewModel.deleteTodo(todo: todo)
                            } label: {
                                Image(systemName: "trash")
                            }
                            .tint(.red)
                        }
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
