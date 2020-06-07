import SwiftUI

struct Traced<C: View>: View {
    let name: String
    let content: C
    var body: some View {
        print("Render: \(name)")
        return content
    }
}

extension View {
    func trace(_ name: String) -> some View {
        Traced(name: name, content: self)
    }
}
