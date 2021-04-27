//  Copyright 2021 (c) Roman Tysiachnik

import Foundation
import Combine

public protocol StateProtocol: Defaultable, Reducable, Equatable {}

public typealias Reducer<State, Event> = (State, Event) -> State

public protocol StoreProtocol {
    associatedtype State: StateProtocol
    
    var state: State { get }
    
    func dispatch(event: State.Event)
    func dispatch(events: State.Event...)
    func dispatch<S: Sequence>(events: S) where S.Element == State.Event
}

precedencegroup BindingPrecedence {
    associativity: right
    higherThan: AssignmentPrecedence
}

infix operator <~ : BindingPrecedence

public extension StoreProtocol {
    static func <~ <Source: Publisher> (target: Self, source: Source) -> Cancellable?
    where State.Event == Source.Output, Never == Source.Failure {
        source.sink(receiveValue: target.dispatch(event:))
    }
}
