import SwiftUI
import StoreKit
import MarketingContent

struct ContentView: View {
    var body: some View {
        NavigationView {
            SubscriptionStoreView(
                productIDs: [
                    "dev.noppe.example.subscription.annually",
                    "dev.noppe.example.subscription.monthly",
                ],
                marketingContent: {
                    MarketingContentView(marketingContent: .example)
                }
            )
            .subscriptionStoreControlStyle(.compactPicker)
//            .subscriptionStoreControlBackground(.bar)
            .subscriptionStorePolicyDestination(
                url: URL(string: "https://example.com/policies")!,
                for: .privacyPolicy
            )
            .subscriptionStorePolicyDestination(
                url: URL(string: "https://example.com/policies")!,
                for: .termsOfService
            )
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button {
                        
                    } label: {
                        Image(systemName: "xmark")
                    }
                    .tint(.secondary)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

