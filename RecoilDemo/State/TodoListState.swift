struct TodoItem {
    var text: String
    var isComplete: Bool
}

let allTodosState = Family<TodoItem>()

let todoListState = Atom {
    [] as [UUID]
}

func appendItem(title: String) {
    let id = allTodosState.append {
        TodoItem(text: title, isComplete: false)
    }
    
    todoListState.value.append(id)
}
