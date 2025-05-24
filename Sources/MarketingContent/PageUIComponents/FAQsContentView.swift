import SwiftUI

struct FAQsContentView: View {
    @State
    var marketingContent: MarketingContent
    
    var body: some View {
        ScrollView {
            LazyVStack {
                Text("Questions? Answers.", bundle: .module)
                    .modifier(SectionTitleTextModifier())
                
                ForEach(marketingContent.faqs, id: \.id, content: { faq in
                    FAQView(faq: faq)
                })
                .padding(.horizontal)
            }
        }
    }
}
