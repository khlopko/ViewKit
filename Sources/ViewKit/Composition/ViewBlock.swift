//
//  ViewBlock.swift
//

public protocol ViewBlock {
    func add(to superblock: ViewBlock)
}

public struct EmptyBlock: ViewBlock {
    
    public init() {
    }

    public func add(to superblock: ViewBlock) {
        // Do nothing.
    }

}

extension Array: ViewBlock where Element: ViewBlock {

    public func add(to superblock: ViewBlock) {
        forEach { $0.add(to: superblock) }
    }

}
