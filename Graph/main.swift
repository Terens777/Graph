//
//  main.swift
//  Graph
//
//  Created by Danylo Bulanov on 12/7/22.
//

import Foundation

private class Main {
    static func main() {
        let graph: Graph<Int> = .init()

        graph.addEdge(0, 1, true)
        graph.addEdge(0, 4, true)
        graph.addEdge(1, 2, true)
        graph.addEdge(1, 3, true)
        graph.addEdge(1, 4, true)
        graph.addEdge(2, 3, true)
        graph.addEdge(3, 4, true)

        graph.printGraph()
        graph.getVertexCount()
        graph.getEdgesCount(true)
        graph.hasEdge(3, 4)
        graph.hasVertex(5)
    }
}

Main.main()
