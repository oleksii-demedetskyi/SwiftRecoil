import SwiftUI

struct RootView: View {
    var body: some View {
        NavigationView {
            VStack {
                TodoListFiltersView()
                TodoCreatorView()
                TodoListView()
            }
            .padding(16)
            .navigationBarTitle("My Todo")
        }
        .trace("Root")
    }
}
