import Combine

class Source<T>: ObservableObject {
    let objectWillChange: ObservableObjectPublisher
    var valueProvider: () -> T
    
    var value: T { valueProvider() }
    
    init(atom: Atom<T>) {
        self.objectWillChange = atom.objectWillChange
        self.valueProvider = { atom.value }
    }
    
    init(selector: Selector<T>) {
        self.objectWillChange = selector.objectWillChange
        self.valueProvider = { selector.value }
    }
}
