//
//  ErrorSheetViewModel.swift
//  QTodo-v1.0
//
//  Created by Mehmet Kubilay Akdemir on 14.06.2023.
//

import Foundation

class ErrorSheetViewModel: ObservableObject {
    
    @Published var showErrorSheetView: Bool = false
    @Published var errorMessage: String = ""
    
    
    func toggleErrorSheetView(){
        showErrorSheetView.toggle()
    }
    
    func changeErrorMessage(message: String) {
        errorMessage = message
    }
    
}
