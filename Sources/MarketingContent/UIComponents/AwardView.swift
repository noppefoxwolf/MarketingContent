import SwiftUI

struct AwardView: View {
    @State
    var award: any Award
    
    var body: some View {
        HStack {
            Image(systemName: "laurel.leading")
                .resizable()
                .scaledToFit()
                .layoutPriority(1)
            award.title
                .font(.callout)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            Image(systemName: "laurel.trailing")
                .resizable()
                .scaledToFit()
                .layoutPriority(1)
        }
        .foregroundStyle(.secondary)
    }
}
