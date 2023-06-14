//
//  AddTodoView.swift
//  QTodo-v1.0
//
//  Created by Mehmet Kubilay Akdemir on 14.06.2023.
//

import SwiftUI

struct AddTodoView: View {
    
    @State var todoText: String = ""
    
    var body: some View {
        VStack(spacing: 20) {
            TextField("Enter a new todo", text: $todoText)
                .padding()
                .background(Color(UIColor.secondarySystemBackground))
                .cornerRadius(10)
            
            Button {
                
            } label: {
                Text("Save".uppercased())
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.mint)
                    .cornerRadius(10)
            }
            Spacer()
        }
        .padding()
        .padding(.vertical, 10)
        .navigationTitle("Add Todo ✏️")
    }
}

struct AddTodoView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            AddTodoView()
        }
    }
}
