//
//  Graph+Extensions.swift
//  Graph
//
//  Created by Danylo Bulanov on 12/7/22.
//

import Foundation

extension Graph {
    
    func getVertexCount() {
        print("The graph has: \(hashmap.keys.count) vertex.")
    }

    func getEdgesCount(_ bidirectional: Bool = false) {
        var count = 0
        
        for v in hashmap.keys {
            if let c = hashmap[v]?.count {
                count += c
            }
        }
        
        if bidirectional {
            count = count / 2
        }
        
        print("The graph has \(count) edges.")
    }
    
    func hasVertex(_ s: T) {
        if hashmap[s] != nil {
            print("The graph contains \(s) as a vertex.")
        } else {
            print("The graph dosn't contain \(s) as a vertex.")
        }
    }
    
    func hasEdge(_ s: T, _ d: T) {
        guard let hmap = hashmap[s] else {
            return
        }
        if hmap.contains(d) {
            print("The graph has an edge between \(s) and \(d).")
        } else {
            print("The graph has no edge between \(s) and \(d).")
        }
    }
    
    func printGraph() {
        let sortedKeys = Array(hashmap.keys).sorted(by: <)
        for v in sortedKeys {
            if let w = hashmap[v] {
                let list = w.getListNodes()
                print("\(v) : \(list)")
            }
        }
    }
}
