import SwiftUI

struct FeaturesContentView: View {
    @State
    var marketingContent: MarketingContent
    
    var body: some View {
        ScrollView(.vertical) {
            LazyVStack(spacing: 20) {
                marketingContent.image?
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .mask(RoundedRectangle(cornerRadius: 26))
                    .overlay {
                        RoundedRectangle(cornerRadius: 26)
                            .stroke(Color.white.opacity(0.5), lineWidth: 1)
                            .blendMode(.overlay)
                    }
                    .padding()
                
                Section {
                    features()
                        .padding(.horizontal)
                } header: {
                    VStack(alignment: .leading) {
                        marketingContent.headlineText
                            .font(.title)
                            .bold()
                        
                        marketingContent.subheadlineText?
                            .foregroundStyle(.secondary)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                }
            }
        }
    }
    
    @ViewBuilder
    func features() -> some View {
        VStack(alignment: .leading, spacing: 16, content: {
            ForEach(marketingContent.features, id: \.id) { feature in
                Label(
                    title: {
                        feature.title
                    },
                    icon: {
                        feature.image
                            .frame(minWidth: 36)
                    }
                )
                .frame(maxWidth: .infinity, alignment: .leading)
            }
        })
        .padding()
        .frame(maxWidth: .infinity)
        .background(content: {
            RoundedRectangle(cornerRadius: 16)
                .foregroundStyle(.background.secondary)
        })
    }
}
