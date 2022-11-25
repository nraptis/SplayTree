//
//  Array+Permutations.swift
//  Tests
//
//  Created by Nick Raptis on 11/22/22.
//

import Foundation

extension Array where Element: Comparable {
    func allPermutations() -> [[Element]] {
        func helper(result: inout [[Element]], list: inout [Element], visited: inout [Bool], elements: [Element]) {
            if list.count == elements.count {
                result.append(list)
                return
            }
            for index in elements.indices {
                if visited[index] {
                    continue
                }
                if index > 0, !visited[index - 1], elements[index] == elements[index - 1] {
                    continue
                }
                list.append(elements[index])
                visited[index] = true
                helper(result: &result,
                    list: &list,
                    visited: &visited,
                    elements: elements)

                list.removeLast()
                visited[index] = false
            }
        }
        var result = [[Element]]()
        var list = [Element]()
        let elements = self.sorted()
        var visited = [Bool](repeating: false, count: elements.count)
        helper(result: &result,
                list: &list,
                visited: &visited,
                elements: elements)
        return result
    }
}
