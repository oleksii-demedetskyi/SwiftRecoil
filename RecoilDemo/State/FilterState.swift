enum FilterState: Hashable {
    case showAll
    case completed
    case uncompleted
}

let filterState = Atom { FilterState.showAll }

let filteredTodoListState = Selector<[UUID]> { get in
    switch get(filterState) {
        
    case .showAll:
        return get(todoListState)
        
    case .completed:
        return get(todoListState).filter {
            get(allTodosState.at(id: $0)).isComplete
        }
        
    case .uncompleted:
        return get(todoListState).filter {
            get(allTodosState.at(id: $0)).isComplete == false
        }
    }
}
