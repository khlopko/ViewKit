//
//  CompositeItem.swift
//

#if canImport(UIKit)
import UIKit

public protocol CompositeItem: UIView {
    var viewComposition: ViewBlock { get }
}

extension CompositeItem {

    internal func composite() {
        viewComposition.add(to: self)
    }

}

open class CompositeView: UIView, CompositeItem {

    open var viewComposition: ViewBlock { EmptyBlock() }

    public override init(frame: CGRect) {
        super.init(frame: frame)
        composite()
    }

    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

open class ScrollView: UIScrollView, CompositeItem {

    open var viewComposition: ViewBlock { EmptyBlock() }

    public override init(frame: CGRect) {
        super.init(frame: frame)
        composite()
    }

    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

open class CollectionView: UICollectionView, CompositeItem {

    open var viewComposition: ViewBlock { EmptyBlock() }

    public override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
        composite()
    }

    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

open class CollectionReusableView: UICollectionReusableView, CompositeItem {

    open var viewComposition: ViewBlock { EmptyBlock() }

    public override init(frame: CGRect) {
        super.init(frame: frame)
        composite()
    }

    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

open class CollectionViewCell: UICollectionViewCell, CompositeItem {

    open var viewComposition: ViewBlock { EmptyBlock() }

    public override init(frame: CGRect) {
        super.init(frame: frame)
        composite()
    }

    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

open class TableView: UITableView, CompositeItem {

    open var viewComposition: ViewBlock { EmptyBlock() }

    public override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        composite()
    }

    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

open class TableViewHeaderFooterView: UITableViewHeaderFooterView, CompositeItem {

    open var viewComposition: ViewBlock { EmptyBlock() }

    public override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        composite()
    }

    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

open class TableViewCell: UITableViewCell, CompositeItem {

    open var viewComposition: ViewBlock { EmptyBlock() }

    public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        composite()
    }

    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

open class Control: UIControl, CompositeItem {

    open var viewComposition: ViewBlock { EmptyBlock() }

    public override init(frame: CGRect) {
        super.init(frame: frame)
        composite()
    }

    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

open class Button: UIButton, CompositeItem {

    open var viewComposition: ViewBlock { EmptyBlock() }

    public override init(frame: CGRect) {
        super.init(frame: frame)
        composite()
    }

    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

open class ImageView: UIImageView, CompositeItem {

    open var viewComposition: ViewBlock { EmptyBlock() }

    public override init(frame: CGRect) {
        super.init(frame: frame)
        composite()
    }

    public override init(image: UIImage?) {
        super.init(image: image)
        composite()
    }

    public override init(image: UIImage?, highlightedImage: UIImage?) {
        super.init(image: image, highlightedImage: highlightedImage)
        composite()
    }

    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

open class Label: UILabel, CompositeItem {

    open var viewComposition: ViewBlock { EmptyBlock() }

    public override init(frame: CGRect) {
        super.init(frame: frame)
        composite()
    }

    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

open class TextView: UITextView, CompositeItem {

    open var viewComposition: ViewBlock { EmptyBlock() }

    public override init(frame: CGRect, textContainer: NSTextContainer?) {
        super.init(frame: frame, textContainer: textContainer)
        composite()
    }

    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

open class TextField: UITextField, CompositeItem {

    open var viewComposition: ViewBlock { EmptyBlock() }

    public override init(frame: CGRect) {
        super.init(frame: frame)
        composite()
    }

    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

#endif
