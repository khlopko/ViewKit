//
//  CompositeView.swift
//

import UIKit

public protocol CompositeView: UIView {
    var viewComposition: ViewBlock { get }
    var targetView: UIView { get }
}

extension CompositeView {

    public func composite() {
        viewComposition.add(to: targetView)
    }

}
