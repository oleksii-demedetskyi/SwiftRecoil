import SwiftUI

struct TodoListFiltersView: View {
    @MutableValue(filterState) var filter
    
    var body: some View {
        Picker("Options", selection: $filter) {
            Text("Uncompleted").tag(FilterState.uncompleted)
            Text("All").tag(FilterState.showAll)
            Text("Completed").tag(FilterState.completed)
        }
        .pickerStyle(SegmentedPickerStyle())
    }
}

