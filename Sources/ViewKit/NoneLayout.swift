
import CoreGraphics

public struct NoneLayout: Layout {

    public init() {
    }

    public func layout(in rect: CGRect) -> CGRect { .zero }

    public func calculateSize(in rect: CGRect) -> CGSize { .zero }

}
