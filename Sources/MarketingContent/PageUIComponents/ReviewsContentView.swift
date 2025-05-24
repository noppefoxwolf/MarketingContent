import SwiftUI

struct ReviewsContentView: View {
    
    @State
    var marketingContent: MarketingContent
    
    var body: some View {
        Section {
            reviews()
        } header: {
            Text("Reviews", bundle: .module)
                .modifier(SectionTitleTextModifier())
        }
    }
    
    @ViewBuilder
    func reviews() -> some View {
        ScrollView(.vertical) {
            LazyVStack(spacing: 20) {
                ScrollView(.horizontal) {
                    LazyHStack(spacing: 12) {
                        ForEach(marketingContent.awards, id: \.id) { award in
                            AwardView(award: award)
                        }
                    }
                    .padding(.horizontal)
                }
                .scrollIndicators(.hidden)
                
                LazyVStack(spacing: 16) {
                    ForEach(marketingContent.reviews, id: \.id) { review in
                        ReviewView(review: review)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

