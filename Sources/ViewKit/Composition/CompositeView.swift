//
//  CompositeView.swift
//

import UIKit

public protocol CompositeView: UIView {
    var viewComposition: ViewBlock { get }
}

extension CompositeView {

    internal func composite() {
        viewComposition.add(to: self)
    }

}
