import SwiftUI

struct FAQsContentView: View {
    @State
    var marketingContent: MarketingContent
    
    var body: some View {
        Section {
            ScrollView {
                ForEach(marketingContent.faqs, id: \.id, content: { faq in
                    FAQView(faq: faq)
                })
                .padding(.horizontal)
            }
        } header: {
            Text("Questions? Answers.")
                .modifier(SectionTitleTextModifier())
        }
    }
}
