import SwiftUI

struct TodoItemView: View {
    @MutableValue var item: TodoItem
    
    init(id: UUID) {
        _item = MutableValue(allTodosState.at(id: id))
    }
    
    var body: some View {
        HStack {
            TextField("What to do", text: $item.text)
            Button(
                action: { self.item.isComplete.toggle() },
                label: { EmptyView() }
            )
            if item.isComplete {
                Image(systemName: "checkmark")
            }
        }
        .trace("Item \(item)")
    }
}
