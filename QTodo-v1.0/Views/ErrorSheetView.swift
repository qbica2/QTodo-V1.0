//
//  ErrorSheetView.swift
//  QTodo-v1.0
//
//  Created by Mehmet Kubilay Akdemir on 14.06.2023.
//

import SwiftUI

struct ErrorSheetView: View {
    
    @EnvironmentObject var errorSheetViewModel: ErrorSheetViewModel
    
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: "x.circle")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .foregroundColor(.red)
            Group{
                Text(errorSheetViewModel.errorMessage)
                    .multilineTextAlignment(.center)
                Text("😱😨😰")
            }
            .fontWeight(.semibold)
            .font(.title2)
            
        }
        .padding(.horizontal, 20)
    }
}

struct ErrorSheetView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            ErrorSheetView()
        }
        .environmentObject(ErrorSheetViewModel())
    }
}
