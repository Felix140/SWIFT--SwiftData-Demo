import Foundation
import SwiftData

class DataItemViewViewModel: ObservableObject {
    
    var contextModel: ModelContext!
    
    func pushData() {
        let itemText = DataItemModel(name: "Testo row")
        contextModel.insert(itemText)
    }
    
    func deleteData(_ item: DataItemModel) {
        contextModel.delete(item)
    }
    
    func updateData(_ item: DataItemModel) {
        item.name = "dato modificato"
        try? contextModel.save()
    }
}
