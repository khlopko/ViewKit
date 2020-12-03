//
//  ViewBlockGroup.swift
//

public struct ViewBlockGroup: ViewBlock {

    private let parent: ViewBlock?
    private let blocks: [ViewBlock]

    internal init(parent: ViewBlock?, blocks: [ViewBlock]) {
        self.parent = parent
        self.blocks = blocks
    }

    public func add(to superblock: ViewBlock) {
        if let parent = parent {
            parent.add(to: superblock)
            blocks.forEach { $0.add(to: parent) }
        } else {
            blocks.forEach { $0.add(to: superblock) }
        }
    }

}
