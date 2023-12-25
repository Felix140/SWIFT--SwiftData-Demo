import SwiftUI
import SwiftData

struct DataItemView: View {
    
    @Environment(\.modelContext) private var context
    @StateObject private var viewModel = DataItemViewViewModel()
    @Query private var listItem: [DataItemModel]
    
    
    var body: some View {
        VStack {
            Text("Tap this button to print a row")
            Button("Tap here") {
                viewModel.pushData()
            }
            
            List {
                ForEach(listItem) { rowList in
                    Text(rowList.name)
                }
                .onDelete(perform: { indexSet in
                    for indexData in indexSet {
                        viewModel.deleteData(listItem[indexData])
                    }
                })
            }
        }
        .onAppear {
            viewModel.contextModel = context /// inizializzo quando appare la VIEW
        }
    }
    
    
    
}

struct DataItemView_Previews: PreviewProvider {
    static var previews: some View {
        DataItemView()
    }
}
