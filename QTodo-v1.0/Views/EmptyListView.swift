//
//  EmptyListView.swift
//  QTodo-v1.0
//
//  Created by Mehmet Kubilay Akdemir on 14.06.2023.
//

import SwiftUI

struct EmptyListView: View {
    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            Text("There are no todos!")
                .font(.title)
                .fontWeight(.semibold)
            
            Text("A perfect day to take the first step towards reaching your goals! Discover the power that will grow with each step you take.")
                .italic()
                
            
            NavigationLink {
                AddTodoView()
            } label: {
                Text("Add Todos")
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(.mint)
                    .cornerRadius(10)
            }

            Spacer()
            Spacer()

        }
        .multilineTextAlignment(.center)
        .padding(30)
        .frame(maxWidth: 400)
    }
}

struct EmptyListView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyListView()
    }
}
