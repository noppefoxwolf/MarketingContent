import SwiftUI

public protocol Award: Sendable {
    var id: UUID { get }
    var title: Text { get }
}
