//
//  UIKit+ViewBlock.swift
//

import UIKit

extension UIView: ViewBlock {

    public final func add(to superblock: ViewBlock) {
        if let composite = superblock as? CompositeView {
            composite.targetView.addSubview(self)
        } else if let view = superblock as? UIView {
            view.addSubview(self)
        }
    }

}
