import SwiftUI

struct TodoListView: View {
    @Value(filteredTodoListState) var todos
    
    var body: some View {
        List(todos, id: \.self) { id in
            TodoItemView(id: id)
        }
        .trace("List")
    }
}

struct TodoCreatorView: View {
    @State var title = ""
    
    var body: some View {
        HStack {
            TextField("Todo", text: $title).padding(24)
            Button(action: {
                appendItem(title: self.title)
                self.title = ""
            }) {
                Image(systemName: "plus")
            }.disabled(title.count == 0)
        }.trace("Creator")
    }
}
