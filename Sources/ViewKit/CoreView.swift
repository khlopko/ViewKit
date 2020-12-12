//
//  CoreView.swift
//

import UIKit
import Combine

open class CoreView: UIView, CompositeView, CombineBinding {

    open var targetView: UIView { self }
    open var viewComposition: ViewBlock { EmptyBlock() }
    public final var bag = Set<AnyCancellable>()

    public override init(frame: CGRect) {
        super.init(frame: frame)
        composite()
        bindPublishers()
    }

    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    open func bindPublishers() {
    }

}
