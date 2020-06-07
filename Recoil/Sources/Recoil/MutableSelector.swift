import Combine

public class MutableSelector<T> {
    let selector: Selector<T>
    let update: (T) -> ()
    
    init(selector: Selector<T>, update: @escaping (T) -> ()) {
        self.selector = selector
        self.update = update
    }
}

extension Selector {
    public func update(update: @escaping (T) -> ()) -> MutableSelector<T> {
        MutableSelector(selector: self, update: update)
    }
}
