import Foundation
import SwiftData

@Model
class DataItemModel: Identifiable {
    let id: String
    var name: String
    
    init(name: String) {
        self.id = UUID().uuidString
        self.name = name
    }
}
