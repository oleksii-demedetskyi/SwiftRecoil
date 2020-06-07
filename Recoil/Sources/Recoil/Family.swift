import Foundation

public class Family<T> {
    private var items = [UUID: Atom<T>]()
    
    public init() {
        
    }
    
    public func append(value: () -> T) -> UUID {
        let atom = Atom { value() }
        items[atom.id] = atom
        return atom.id
    }
    
    public func at(id: UUID) -> Atom<T> {
        guard let atom = items[id] else {
            preconditionFailure("Atom is not available")
        }
        
        return atom
    }
}
