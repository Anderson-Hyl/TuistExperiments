
import ComposableArchitecture
import SwiftUI
import TodosFeature

@Reducer
public struct AppReducer {
  public init() {}

  @ObservableState
  public struct State: Equatable {
      var todos = TodosReducer.State()
    public init() {}
  }

  public enum Action: ViewAction, BindableAction {
    case binding(BindingAction<State>)
      case todos(TodosReducer.Action)
    case view(View)
    public enum View {
      case onTask 
    }
  }

  public var body: some ReducerOf<Self> {
    BindingReducer()
      Scope(state: \.todos, action: \.todos) {
          TodosReducer()
      }
    Reduce { state, action in
      switch action {
      case .binding:
        return .none
      case .todos:
          return .none
      case .view(.onTask):
        return .none
      }
    }
  }
}

public struct AppView: View {
  @Bindable var store: StoreOf<AppReducer>
  public init(store: StoreOf<AppReducer>) {
    self.store = store 
  }

  public var body: some View {
      TodosView(store: store.scope(state: \.todos, action: \.todos))
  }
}

#Preview {
  AppView(
    store: Store(initialState: .init()) { AppReducer() }
  )
}
