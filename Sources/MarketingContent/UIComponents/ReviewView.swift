import SwiftUI

struct ReviewView: View {
    @State
    var review: any Review
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            review.title
                .font(.title3)
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    stars(rate: review.rate)
                    review.reviewer
                        .foregroundStyle(.secondary)
                }
                review.message?
                    .foregroundStyle(.secondary)
                Spacer()
            }
        }
        .padding()
        .background(content: {
            RoundedRectangle(cornerRadius: 12)
                .foregroundStyle(.background.secondary)
        })
    }
    
    @ViewBuilder
    func stars(rate: Double) -> some View {
        HStack(spacing: 2) {
            ForEach(0..<5) { _ in
                Image(systemName: "star")
            }
        }
        .imageScale(.small)
        .symbolVariant(.fill)
        .mask {
            GeometryReader { proxy in
                Color.black
                    .frame(width: proxy.size.width * (rate / 5.0))
            }
            .background(Color.black.opacity(0.45))
        }
    }
}


