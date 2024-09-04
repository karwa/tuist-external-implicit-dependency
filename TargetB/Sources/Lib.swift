// This is an implicit dependency.
// TargetB does not declare an explicit dependency on swift-collections.

import Collections

func useSwiftCollections() {
    print(Deque([1, 2, 3]).count)
}
