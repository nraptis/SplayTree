//
//  ArrayTreeConforming.swift
//  TreeTests
//
//  Created by Nicky Taylor on 11/25/22.
//

import Foundation


protocol ArrayTreeNodeConforming {
    associatedtype Element
    var data: [Self?] { set get }
    var value: Element { get }
}

protocol ArrayTreeConforming {
    associatedtype ArrayTreeNode: ArrayTreeNodeConforming
    var root: ArrayTreeNode? { get }
    var count: Int { get }
    func clear()
    func insert(_ element: ArrayTreeNode.Element)
}
