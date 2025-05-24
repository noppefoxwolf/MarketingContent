import SwiftUI

public protocol Feature: Sendable, Identifiable {
    var id: UUID { get }
    var image: Image { get }
    var title: Text { get }
}

