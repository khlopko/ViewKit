//
//  ViewConvertible.swift
//

import UIKit

public typealias LabelBuilder = ViewConvertible<UILabel>
public typealias TextFieldBuilder = ViewConvertible<UITextField>
public typealias TextViewBuilder = ViewConvertible<UITextView>
public typealias ScrollViewBuilder = ViewConvertible<UIScrollView>
public typealias TableViewBuilder = ViewConvertible<UITableView>
public typealias CollectionViewBuilder = ViewConvertible<UITableView>
public typealias UIVisualEffectViewBuilder = ViewConvertible<UIVisualEffectView>
public typealias ActivityIndicatorViewBuilder = ViewConvertible<UIActivityIndicatorView>
public typealias ImageViewBuilder = ViewConvertible<UIImageView>
public typealias ButtonBuilder = ViewConvertible<UIButton>
public typealias SwitchBuilder = ViewConvertible<UISwitch>
public typealias SliderBuilder = ViewConvertible<UISlider>
public typealias ToolbarBuilder = ViewConvertible<UIToolbar>
public typealias DatePickerBuilder = ViewConvertible<UIDatePicker>
public typealias PageControlBuilder = ViewConvertible<UIPageControl>

/// Builder for the UIKit views.
///
/// Usage example:
///
///     let view: UILabel = ViewConvertible()
///         .text("Hello")
///         .backgroundColor(.blue)
@dynamicMemberLookup
public struct ViewConvertible<View> where View : UIView {

    public let view: View

    public init(_ make: @autoclosure () -> View) {
        view = make()
    }

    public init(viewClass: View.Type = View.self) {
        view = viewClass.init()
    }

    public init(view: View) {
        self.view = view
    }

    public subscript <T>(
        dynamicMember member: ReferenceWritableKeyPath<View, T>
    ) -> ViewProperty<View, T> {
        ViewProperty(view: view, keyPath: member)
    }

}

@dynamicCallable
public struct ViewProperty<View, T> where View: UIView {

    private let view: View
    private let keyPath: ReferenceWritableKeyPath<View, T>

    fileprivate init(view: View, keyPath: ReferenceWritableKeyPath<View, T>) {
        self.view = view
        self.keyPath = keyPath
    }

    public func dynamicallyCall(withArguments args: [T]) -> ViewConvertible<View> {
        for arg in args {
            view[keyPath: keyPath] = arg
        }
        return ViewConvertible(view: view)
    }

    public func dynamicallyCall(withArguments args: [T]) -> View {
        for arg in args {
            view[keyPath: keyPath] = arg
        }
        return view
    }

}
