import ComposableArchitecture
import Foundation

@Reducer
public struct  {
  public init() {}

  @ObservableState
  public struct State: Equatable {
    public init() {}
  }

  public enum Action: ViewAction {
    case view(View)

    public enum View {
      case onTask
    }
  }

  public var body: some ReducerOf<Self> {
    Reduce { state, action in 
      switch action {
        case .view:
          return .none
      }
    }
  }
}