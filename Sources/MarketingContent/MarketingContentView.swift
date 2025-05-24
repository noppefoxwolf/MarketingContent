import SwiftUI

@available(iOS 18.0, *)
public struct MarketingContentView: View {
    @State
    var marketingContent: MarketingContent
    
    public init(marketingContent: MarketingContent) {
        self.marketingContent = marketingContent
    }
    
    public var body: some View {
        TabView {
            Tab {
                FeaturesContentView(marketingContent: marketingContent)
            }
            Tab {
                ReviewsContentView(marketingContent: marketingContent)
            }
            Tab {
                FAQsContentView(marketingContent: marketingContent)
            }
        }
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
        .navigationTitle(marketingContent.title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

