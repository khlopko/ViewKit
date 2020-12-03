//
//  UIKit+ViewBlock.swift
//

#if canImport(UIKit)
import UIKit

extension UIView: ViewBlock {

    public final func add(to superblock: ViewBlock) {
        if let view = superblock as? UIView {
            view.addSubview(self)
        }
    }

    public struct Composite: ViewBlock {

        private let root: ViewBlockGroup

        public init(_ parent: ViewBlock? = nil, @ViewCompositeBuilder make: () -> [ViewBlock]) {
            root = ViewBlockGroup(parent: parent, blocks: make())
        }

        public func add(to superblock: ViewBlock) {
            root.add(to: superblock)
        }

    }

}

extension Array: ViewBlock where Element: ViewBlock {

    public func add(to superblock: ViewBlock) {
        forEach { $0.add(to: superblock) }
    }

}
#endif
