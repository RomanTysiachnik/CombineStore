//  Copyright 2021 (c) Roman Tysiachnik

import Foundation

public protocol Defaultable {
  static var defaultValue: Self { get }
}
