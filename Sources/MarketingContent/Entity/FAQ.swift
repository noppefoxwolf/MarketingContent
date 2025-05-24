import SwiftUI

public protocol FAQ: Sendable {
    var id: UUID { get }
    var question: Text { get }
    var answer: Text { get }
}

