//
//  CoreView.swift
//

import UIKit
#if canImport(Combine)
import Combine
#endif

open class CoreView: UIView, CompositeView, CombineBinding {

    open var targetView: UIView { self }
    open var viewComposition: ViewBlock { EmptyBlock() }

    @available(iOS 13.0, *)
    public final lazy var bag = Set<AnyCancellable>()

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
