//  Copyright 2021 (c) Roman Tysiachnik

import Foundation
import Combine

open class Store<State: StateProtocol>: ObservableObject, StoreProtocol {
    @Published
    public private(set) var state: State
    
    private lazy var events = PassthroughSubject<State.Event, Never>()
    
    private var cancellables = Set<AnyCancellable>()

    private let queue: DispatchQueue
    
    init(
        queue: DispatchQueue = DispatchQueue(label: "com.combineStore.read", qos: .userInitiated)
    ) {
        self.state = State.defaultValue
        self.reducers = reducers
        self.queue = queue
        
        events
            .subscribe(on: queue)
            .receive(on: queue)
            .scan(state, State.reduce(state:_:))
            .sink { [unowned self] state in self.state = state }
            .store(in: &cancellables)
    }
    
    public func dispatch(event: State.Event) {
        events.send(event)
    }
    
    public func dispatch(events: State.Event...) {
        dispatch(events: events)
    }
    
    public func dispatch<S: Sequence>(events: S) where S.Element == State.Event {
        events.forEach(self.events.send)
    }
}
