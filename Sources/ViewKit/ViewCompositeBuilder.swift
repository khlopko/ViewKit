//
//  ViewCompositeBuilder.swift
//

@_functionBuilder
public struct ViewCompositeBuilder {

    public static func buildBlock(_ component: ViewBlock) -> [ViewBlock]  { [component] }

    public static func buildBlock(_ children: ViewBlock...) -> [ViewBlock] { children }

    public static func buildBlock(_ children: [ViewBlock]) -> [ViewBlock] { children }

}
