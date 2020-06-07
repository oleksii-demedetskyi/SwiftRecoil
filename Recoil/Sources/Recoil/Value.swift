import SwiftUI
import Combine

@propertyWrapper
public struct Value<T>: DynamicProperty {
    @ObservedObject private var source: Source<T>
    
    public init(_ selector: Selector<T>) {
        self.source = Source(selector: selector)
    }
    
    public init(_ atom: Atom<T>) {
        self.source = Source(atom: atom)
    }
    
    public var wrappedValue: T {
        get { source.value }
    }
}
