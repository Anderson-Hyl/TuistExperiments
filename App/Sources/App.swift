import SwiftUI
import AppFeature
import ComposableArchitecture

@main
struct Indigo: App {
    static let appStore = Store(
        initialState: AppReducer.State(),
        reducer: { AppReducer() }
    )
  var body: some Scene {
    WindowGroup {
        NavigationStack {
            AppView(store: Self.appStore)
        }
    }
  }
}
