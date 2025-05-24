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
                    .safeAreaPadding(.bottom, 64)
                    .modifier(SpecificHeightMaskModifier(height: 32))
            }
            Tab {
                ReviewsContentView(marketingContent: marketingContent)
                    .safeAreaPadding(.bottom, 64)
                    .modifier(SpecificHeightMaskModifier(height: 32))
            }
            Tab {
                FAQsContentView(marketingContent: marketingContent)
                    .safeAreaPadding(.bottom, 64)
                    .modifier(SpecificHeightMaskModifier(height: 32))
            }
        }
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
        .navigationTitle(marketingContent.title)
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

