import SwiftUI

struct SectionTitleTextModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title)
            .bold()
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
    }
}

