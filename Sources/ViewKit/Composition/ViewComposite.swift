//
//  ViewComposite.swift
//

public struct ViewComposite: ViewBlock {

    private let root: ViewBlockGroup

    public init(_ parent: ViewBlock? = nil, @ViewBlockBuilder make: () -> [ViewBlock]) {
        root = ViewBlockGroup(parent: parent, blocks: make())
    }

    public func add(to superblock: ViewBlock) {
        root.add(to: superblock)
    }

}
