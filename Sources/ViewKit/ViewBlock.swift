//
//  ViewBlock.swift
//

public protocol ViewBlock {
    func add(to superblock: ViewBlock)
}

public struct EmptyBlock: ViewBlock {

    public func add(to superblock: ViewBlock) {
        // Do nothing.
    }

}
