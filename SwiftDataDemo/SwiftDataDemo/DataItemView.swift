//
//  DataItemView.swift
//  SwiftDataDemo
//
//  Created by Felix Valdez on 24/12/23.
//

import SwiftUI

struct DataItemView: View {
    
    @Environment(\.modelContext) private var context
    
    var body: some View {
        VStack {
            Text("Tap this button to print a row")
            Button("Tap here") {
                pushData()
            }
            
            List {
       
            }
        }
    }
    
    func pushData() {
        let itemText = DataItemModel(name: "Testo row")
        context.insert(itemText)
    }

}

#Preview {
    DataItemView()
}
