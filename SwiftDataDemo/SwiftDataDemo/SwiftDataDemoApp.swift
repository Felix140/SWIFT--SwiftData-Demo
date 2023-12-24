import SwiftUI
import SwiftData

@main
struct SwiftDataDemoApp: App {
    var body: some Scene {
        WindowGroup {
            DataItemView()
        }
        .modelContainer(for: DataItemModel.self)
    }
}
