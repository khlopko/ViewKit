//
//  ExtendedViews.swift
//

import UIKit
import Combine

open class ScrollView: UIScrollView, CompositeView, CombineBinding {

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

open class CollectionView: UICollectionView, CompositeView, CombineBinding {

    open var targetView: UIView { self }
    open var viewComposition: ViewBlock { EmptyBlock() }
    public final var bag = Set<AnyCancellable>()

    public override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
        composite()
        bindPublishers()
    }

    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    open func bindPublishers() {
    }

}

open class CollectionReusableView: UICollectionReusableView, CompositeView, CombineBinding {

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

open class CollectionViewCell: UICollectionViewCell, CompositeView, CombineBinding {

    open var targetView: UIView { contentView }
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

open class TableView: UITableView, CompositeView, CombineBinding {

    open var targetView: UIView { self }
    open var viewComposition: ViewBlock { EmptyBlock() }
    public final var bag = Set<AnyCancellable>()

    public override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        composite()
        bindPublishers()
    }

    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    open func bindPublishers() {
    }

}

open class TableViewHeaderFooterView: UITableViewHeaderFooterView, CompositeView, CombineBinding {

    open var targetView: UIView { contentView }
    open var viewComposition: ViewBlock { EmptyBlock() }
    public final var bag = Set<AnyCancellable>()

    public override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        composite()
        bindPublishers()
    }

    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    open func bindPublishers() {
    }

}

open class TableViewCell: UITableViewCell, CompositeView, CombineBinding {

    open var targetView: UIView { contentView }
    open var viewComposition: ViewBlock { EmptyBlock() }
    public final var bag = Set<AnyCancellable>()

    public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        composite()
        bindPublishers()
    }

    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    open func bindPublishers() {
    }

}

open class Control: UIControl, CompositeView, CombineBinding {

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

open class Button: UIButton, CompositeView, CombineBinding {

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

open class ImageView: UIImageView, CompositeView, CombineBinding {

    open var targetView: UIView { self }
    open var viewComposition: ViewBlock { EmptyBlock() }
    public final var bag = Set<AnyCancellable>()

    public override init(frame: CGRect) {
        super.init(frame: frame)
        composite()
        bindPublishers()
    }

    public override init(image: UIImage?) {
        super.init(image: image)
        composite()
        bindPublishers()
    }

    public override init(image: UIImage?, highlightedImage: UIImage?) {
        super.init(image: image, highlightedImage: highlightedImage)
        composite()
        bindPublishers()
    }

    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    open func bindPublishers() {
    }

}

open class Label: UILabel, CompositeView, CombineBinding {

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

open class TextView: UITextView, CompositeView, CombineBinding {

    open var targetView: UIView { self }
    open var viewComposition: ViewBlock { EmptyBlock() }
    public final var bag = Set<AnyCancellable>()

    public override init(frame: CGRect, textContainer: NSTextContainer?) {
        super.init(frame: frame, textContainer: textContainer)
        composite()
        bindPublishers()
    }

    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    open func bindPublishers() {
    }

}

open class TextField: UITextField, CompositeView, CombineBinding {

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
