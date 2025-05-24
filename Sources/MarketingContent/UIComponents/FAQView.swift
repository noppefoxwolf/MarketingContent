import SwiftUI

struct FAQView: View {
    @State
    var isExpanded: Bool = false
    
    @State
    var faq: any FAQ
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Button {
                isExpanded.toggle()
            } label: {
                HStack {
                    faq.question
                        .bold()
                    Spacer()
                    indicator()
                }
                .contentShape(Rectangle())
            }
            .buttonStyle(.plain)
            
            if isExpanded {
                faq.answer
                    .foregroundStyle(.secondary)
            }
        }
        .padding()
        .background(content: {
            RoundedRectangle(cornerRadius: 12)
                .foregroundStyle(.background.secondary)
        })
        .mask({
            // アニメーション中にテキストが背景の外に出るのでマスクする
            Rectangle()
        })
        .animation(.default, value: isExpanded)
    }
    
    func indicator() -> some View {
        isExpanded ? Image(systemName: "chevron.up") : Image(systemName: "chevron.down")
    }
}
