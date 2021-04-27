//  Copyright 2021 (c) Roman Tysiachnik

import Foundation

public protocol Reducable {
    associatedtype Event
    static func reduce(state: Self, _ event: Event) -> Self
}
