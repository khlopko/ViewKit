//
//  View.swift
//

#if canImport(UIKit)
import UIKit

open class View: UIView {

    open var viewComposition: ViewBlock { EmptyBlock() }

}
#endif
