//
//  AddTodoView.swift
//  QTodo-v1.0
//
//  Created by Mehmet Kubilay Akdemir on 14.06.2023.
//

import SwiftUI

struct AddTodoView: View {
    
    @EnvironmentObject var listViewModel: ListViewModel
    @EnvironmentObject var errorSheetViewModel: ErrorSheetViewModel
    @Environment(\.presentationMode) var presentationMode
    
    @State var todoText: String = ""
    
    var body: some View {
        VStack(spacing: 20) {
            TextField("Enter a new todo", text: $todoText)
                .padding()
                .background(Color(UIColor.secondarySystemBackground))
                .cornerRadius(10)
            
            Button {
                saveButtonPressed()
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
        .sheet(isPresented: $errorSheetViewModel.showErrorSheetView) {
            ErrorSheetView()
                .presentationDetents([.height(300)])
        }
    }
}

//MARK: - Functions

extension AddTodoView {
    
    func isTodoTextValid(trimmedText: String) -> Bool {
        if trimmedText.isEmpty {
            errorSheetViewModel.changeErrorMessage(message: "Please enter a valid todo!")
            errorSheetViewModel.toggleErrorSheetView()
            return false
        }
        
        if trimmedText.count < 3 {
            errorSheetViewModel.changeErrorMessage(message: "Your new todo must be at least 3 characters long!")
            errorSheetViewModel.toggleErrorSheetView()
            return false
        }
        
        return true
    }
    
    func saveButtonPressed(){
        let trimmedText = todoText.trimmingCharacters(in: .whitespacesAndNewlines)
        
        if isTodoTextValid(trimmedText: trimmedText) {
            listViewModel.addTodo(content: trimmedText)
            presentationMode.wrappedValue.dismiss()
        }
    }
}

struct AddTodoView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            AddTodoView()
        }
        .environmentObject(ErrorSheetViewModel())
    }
}
