import SwiftUI

public protocol Review: Sendable {
    var id: UUID { get }
    var rate: Double { get }
    var title: Text { get }
    var reviewer: Text { get }
    var message: Text? { get }
    var image: Image? { get }
}

