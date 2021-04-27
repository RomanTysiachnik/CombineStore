//  Copyright 2021 (c) Roman Tysiachnik

import Foundation

public protocol Modifyable {
    func modifying<T>(
        _: WritableKeyPath<Self, T>, to: T
    ) -> Self
    func modifying<T, U>(
        _: WritableKeyPath<Self, T>, to: T,
        _: WritableKeyPath<Self, U>, to: U
    ) -> Self
    func modifying<T, U, Y>(
        _: WritableKeyPath<Self, T>, to: T,
        _: WritableKeyPath<Self, U>, to: U,
        _: WritableKeyPath<Self, Y>, to: Y
    ) -> Self
    func modifying<T, U, Y, Z>(
        _: WritableKeyPath<Self, T>, to: T,
        _: WritableKeyPath<Self, U>, to: U,
        _: WritableKeyPath<Self, Y>, to: Y,
        _: WritableKeyPath<Self, Z>, to: Z
    ) -> Self
    func modifying<T, U, Y, Z, X>(
        _: WritableKeyPath<Self, T>, to: T,
        _: WritableKeyPath<Self, U>, to: U,
        _: WritableKeyPath<Self, Y>, to: Y,
        _: WritableKeyPath<Self, Z>, to: Z,
        _: WritableKeyPath<Self, X>, to: X
    ) -> Self
    func modifying<T, U, Y, Z, X, K>(
        _: WritableKeyPath<Self, T>, to: T,
        _: WritableKeyPath<Self, U>, to: U,
        _: WritableKeyPath<Self, Y>, to: Y,
        _: WritableKeyPath<Self, Z>, to: Z,
        _: WritableKeyPath<Self, X>, to: X,
        _: WritableKeyPath<Self, K>, to: K
    ) -> Self
    func modifying<T, U, Y, Z, X, K, P>(
        _: WritableKeyPath<Self, T>, to: T,
        _: WritableKeyPath<Self, U>, to: U,
        _: WritableKeyPath<Self, Y>, to: Y,
        _: WritableKeyPath<Self, Z>, to: Z,
        _: WritableKeyPath<Self, X>, to: X,
        _: WritableKeyPath<Self, K>, to: K,
        _: WritableKeyPath<Self, P>, to: P
    ) -> Self

    func modifying<T, U, Y, Z, X, K, P, R>(
        _: WritableKeyPath<Self, T>, to: T,
        _: WritableKeyPath<Self, U>, to: U,
        _: WritableKeyPath<Self, Y>, to: Y,
        _: WritableKeyPath<Self, Z>, to: Z,
        _: WritableKeyPath<Self, X>, to: X,
        _: WritableKeyPath<Self, K>, to: K,
        _: WritableKeyPath<Self, P>, to: P,
        _: WritableKeyPath<Self, R>, to: R
    ) -> Self
}

public extension Modifyable {
    func modifying<T>(_ keyPath: WritableKeyPath<Self, T>, to value: T) -> Self {
        var instanse = self
        instanse[keyPath: keyPath] = value
        return instanse
    }

    func modifying<T, U>(
        _ keyPath1: WritableKeyPath<Self, T>, to value1: T,
        _ keyPath2: WritableKeyPath<Self, U>, to value2: U
    ) -> Self {
        var instanse = self
        instanse[keyPath: keyPath1] = value1
        instanse[keyPath: keyPath2] = value2
        return instanse
    }

    func modifying<T, U, Y>(
        _ keyPath1: WritableKeyPath<Self, T>, to value1: T,
        _ keyPath2: WritableKeyPath<Self, U>, to value2: U,
        _ keyPath3: WritableKeyPath<Self, Y>, to value3: Y
    ) -> Self {
        var instanse = self
        instanse[keyPath: keyPath1] = value1
        instanse[keyPath: keyPath2] = value2
        instanse[keyPath: keyPath3] = value3
        return instanse
    }

    func modifying<T, U, Y, Z>(
        _ keyPath1: WritableKeyPath<Self, T>, to value1: T,
        _ keyPath2: WritableKeyPath<Self, U>, to value2: U,
        _ keyPath3: WritableKeyPath<Self, Y>, to value3: Y,
        _ keyPath4: WritableKeyPath<Self, Z>, to value4: Z
    ) -> Self {
        var instanse = self
        instanse[keyPath: keyPath1] = value1
        instanse[keyPath: keyPath2] = value2
        instanse[keyPath: keyPath3] = value3
        instanse[keyPath: keyPath4] = value4
        return instanse
    }

    func modifying<T, U, Y, Z, X>(
        _ keyPath1: WritableKeyPath<Self, T>, to value1: T,
        _ keyPath2: WritableKeyPath<Self, U>, to value2: U,
        _ keyPath3: WritableKeyPath<Self, Y>, to value3: Y,
        _ keyPath4: WritableKeyPath<Self, Z>, to value4: Z,
        _ keyPath5: WritableKeyPath<Self, X>, to value5: X
    ) -> Self {
        var instanse = self
        instanse[keyPath: keyPath1] = value1
        instanse[keyPath: keyPath2] = value2
        instanse[keyPath: keyPath3] = value3
        instanse[keyPath: keyPath4] = value4
        instanse[keyPath: keyPath5] = value5
        return instanse
    }

    func modifying<T, U, Y, Z, X, K>(
        _ keyPath1: WritableKeyPath<Self, T>, to value1: T,
        _ keyPath2: WritableKeyPath<Self, U>, to value2: U,
        _ keyPath3: WritableKeyPath<Self, Y>, to value3: Y,
        _ keyPath4: WritableKeyPath<Self, Z>, to value4: Z,
        _ keyPath5: WritableKeyPath<Self, X>, to value5: X,
        _ keyPath6: WritableKeyPath<Self, K>, to value6: K
    ) -> Self {
        var instanse = self
        instanse[keyPath: keyPath1] = value1
        instanse[keyPath: keyPath2] = value2
        instanse[keyPath: keyPath3] = value3
        instanse[keyPath: keyPath4] = value4
        instanse[keyPath: keyPath5] = value5
        instanse[keyPath: keyPath6] = value6
        return instanse
    }

    func modifying<T, U, Y, Z, X, K, P>(
        _ keyPath1: WritableKeyPath<Self, T>, to value1: T,
        _ keyPath2: WritableKeyPath<Self, U>, to value2: U,
        _ keyPath3: WritableKeyPath<Self, Y>, to value3: Y,
        _ keyPath4: WritableKeyPath<Self, Z>, to value4: Z,
        _ keyPath5: WritableKeyPath<Self, X>, to value5: X,
        _ keyPath6: WritableKeyPath<Self, K>, to value6: K,
        _ keyPath7: WritableKeyPath<Self, P>, to value7: P
    ) -> Self {
        var instanse = self
        instanse[keyPath: keyPath1] = value1
        instanse[keyPath: keyPath2] = value2
        instanse[keyPath: keyPath3] = value3
        instanse[keyPath: keyPath4] = value4
        instanse[keyPath: keyPath5] = value5
        instanse[keyPath: keyPath6] = value6
        instanse[keyPath: keyPath7] = value7
        return instanse
    }

    func modifying<T, U, Y, Z, X, K, P, R>(
        _ keyPath1: WritableKeyPath<Self, T>, to value1: T,
        _ keyPath2: WritableKeyPath<Self, U>, to value2: U,
        _ keyPath3: WritableKeyPath<Self, Y>, to value3: Y,
        _ keyPath4: WritableKeyPath<Self, Z>, to value4: Z,
        _ keyPath5: WritableKeyPath<Self, X>, to value5: X,
        _ keyPath6: WritableKeyPath<Self, K>, to value6: K,
        _ keyPath7: WritableKeyPath<Self, P>, to value7: P,
        _ keyPath8: WritableKeyPath<Self, R>, to value8: R
    ) -> Self {
        var instanse = self
        instanse[keyPath: keyPath1] = value1
        instanse[keyPath: keyPath2] = value2
        instanse[keyPath: keyPath3] = value3
        instanse[keyPath: keyPath4] = value4
        instanse[keyPath: keyPath5] = value5
        instanse[keyPath: keyPath6] = value6
        instanse[keyPath: keyPath7] = value7
        instanse[keyPath: keyPath8] = value8
        return instanse
    }
}
