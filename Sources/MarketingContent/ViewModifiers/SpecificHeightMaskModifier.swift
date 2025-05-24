import SwiftUI

struct SpecificHeightMaskModifier: ViewModifier {
    let height: CGFloat
    
    func body(content: Content) -> some View {
        content
            .mask {
                VStack(spacing: 0) {
                    Color.black
                    LinearGradient(
                        colors: [.black, .clear],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                    .frame(height: height)
                }
            }
    }
}
