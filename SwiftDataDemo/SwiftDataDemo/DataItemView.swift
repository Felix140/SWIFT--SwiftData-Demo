import SwiftUI
import SwiftData

struct DataItemView: View {
    
    @Environment(\.modelContext) private var context
    @Query private var listItem: [DataItemModel]
    
    var body: some View {
        VStack {
            Text("Tap this button to print a row")
            Button("Tap here") {
                pushData()
            }
            
            List {
                ForEach(listItem) { rowList in
                    Text(rowList.name)
                }
                .onDelete(perform: { indexSet in
                    for indexData in indexSet {
                        deleteData(listItem[indexData])
                    }
                })
            }
        }
    }
    
    func pushData() {
        let itemText = DataItemModel(name: "Testo row")
        context.insert(itemText)
    }
    
    func deleteData(_ item: DataItemModel) {
        context.delete(item)
    }

}

struct DataItemView_Previews: PreviewProvider {
    static var previews: some View {
        DataItemView()
    }
}
