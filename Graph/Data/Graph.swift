//
//  Graph.swift
//  Graph
//
//  Created by Danylo Bulanov on 12/7/22.
//

import Foundation

protocol GraphDataProtocol: Hashable, Equatable, Comparable {}

class Graph<T: GraphDataProtocol> {

    private(set) var hashmap: [T: LinkedList<T>] = [:]

    func addVertex(_ s: T) {
        hashmap[s] = LinkedList<T>()
    }
    
    func addEdge(_ source: T, _ destination: T, _ bidirectional: Bool) {
        if hashmap[source] == nil {
            addVertex(source)
        }
        if hashmap[destination] == nil {
            addVertex(destination)
        }
       
        hashmap[source]?.append(value: destination)
        
        if bidirectional {
            hashmap[destination]?.append(value: source)
        }
    }
}
