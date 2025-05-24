import SwiftUI
import StoreKit
import MarketingContent

struct ContentView: View {
    @State
    var isPresented: Bool = false
    
    var body: some View {
        Button {
            isPresented.toggle()
        } label: {
            Text("Show Subscription Store")
        }
        .sheet(isPresented: $isPresented) {
            AppSubscriptionStoreView()
        }

    }
}

struct AppSubscriptionStoreView: View {
    var body: some View {
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

#Preview {
    ContentView()
}

