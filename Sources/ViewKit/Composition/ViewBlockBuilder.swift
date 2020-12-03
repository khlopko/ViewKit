//
//  ViewBlockBuilder.swift
//

@_functionBuilder
public struct ViewBlockBuilder {

    public static func buildBlock(_ children: ViewBlock...) -> [ViewBlock] { children }

}
