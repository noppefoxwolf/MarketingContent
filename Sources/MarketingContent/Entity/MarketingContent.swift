import SwiftUI

public struct MarketingContent: Sendable {
    let image: Image?
    let headlineText: Text
    let subheadlineText: Text?
    let features: [any Feature]
    let awards: [any Award]
    let reviews: [any Review]
    let faqs: [any FAQ]
    
    public init(
        image: Image?,
        headlineText: Text,
        subheadlineText: Text?,
        features: [any Feature],
        awards: [any Award],
        reviews: [any Review],
        faqs: [any FAQ]
    ) {
        self.image = image
        self.headlineText = headlineText
        self.subheadlineText = subheadlineText
        self.features = features
        self.awards = awards
        self.reviews = reviews
        self.faqs = faqs
    }
}
