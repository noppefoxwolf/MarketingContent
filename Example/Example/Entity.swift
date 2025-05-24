import MarketingContent
import Foundation
import SwiftUI

struct AppFAQ: FAQ {
    var id: UUID = UUID()
    var question: Text
    var answer: Text
}

struct AppAward: Award {
    var id: UUID = UUID()
    var title: Text
}

struct AppFeature: Feature {
    var id: UUID = UUID()
    var title: Text
    var image: Image
}

struct AppStoreReview: Review {
    var id: UUID = UUID()
    var rate: Double = 3.7
    var title: Text = Text("title")
    var reviewer: Text = Text("username")
    var message: Text? = Text("message")
    var image: Image? = Image(systemName: "house")
}

extension MarketingContent {
    static var example: MarketingContent {
        MarketingContent(
            title: Text("Example Pro"),
            image: Image(.image),
            headlineText: Text("Unlock all features"),
            subheadlineText: Text("undreds of exclusive features"),
            features: [
                AppFeature(
                    title: Text("Unlimited guided meditations"),
                    image: Image(systemName: "apple.meditate")
                ),
                AppFeature(
                    title: Text("Ad-free experience"),
                    image: Image(systemName: "leaf")
                )
            ],
            awards: [
                AppAward(title: Text("Apple\nDesignAward")),
                AppAward(title: Text("AppStore\nRanking 1st")),
                AppAward(title: Text("AppStore\nRanking 1st")),
            ],
            reviews: [
                AppStoreReview(),
                AppStoreReview(),
            ],
            faqs: [
                AppFAQ(
                    question: Text("What is iCloud+?"),
                    answer: Text(
                         """
                         iCloud+ is a premium subscription that provides additional storage to keep your photos, videos, files, and more backed up and automatically available across your devices. It also includes access to features like Apple Invites, iCloud Private Relay, Hide My Email, Custom Email Domain, and HomeKit Secure Video support for a private and connected experience.
                         """
                    )
                ),
                AppFAQ(
                    question: Text("What is iCloud+?"),
                    answer: Text(
                         """
                         iCloud+ is a premium subscription that provides additional storage to keep your photos, videos, files, and more backed up and automatically available across your devices. It also includes access to features like Apple Invites, iCloud Private Relay, Hide My Email, Custom Email Domain, and HomeKit Secure Video support for a private and connected experience.
                         """
                    )
                )
            ]
        )
    }
}
