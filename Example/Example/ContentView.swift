import SwiftUI
import StoreKit
import MarketingContent

struct ContentView: View {
    var body: some View {
        MarketingContentView(marketingContent: .example)
    }
}

#Preview {
    NavigationView {
        SubscriptionStoreView(
            productIDs: [
                "dev.noppe.example.subscription.annually",
                "dev.noppe.example.subscription.monthly",
            ],
            marketingContent: {
                ContentView()
            }
        )
        .subscriptionStoreControlStyle(.compactPicker)
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

