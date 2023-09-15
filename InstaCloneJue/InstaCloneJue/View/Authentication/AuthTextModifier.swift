import SwiftUI

struct AuthTextModifier: ViewModifier {
    /** This gets the content of some View and applies the modifiers **/
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
    }
}
