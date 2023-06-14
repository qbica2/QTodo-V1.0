//
//  QTodo_v1_0App.swift
//  QTodo-v1.0
//
//  Created by Mehmet Kubilay Akdemir on 14.06.2023.
//

import SwiftUI

@main
struct QTodo_v1_0App: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    @StateObject var errorSheetViewModel: ErrorSheetViewModel = ErrorSheetViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack{
                ListView()
            }
            .environmentObject(listViewModel)
            .environmentObject(errorSheetViewModel)
        }
    }
}
