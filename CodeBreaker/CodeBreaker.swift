//
//  CodeBreaker.swift
//  CodeBreaker
//
//  Created by Joao Paulo on 23/07/26.
//

import SwiftUI

typealias Peg = Color

struct CodeBreaker {
    var masterCode: Code = Code(kind: .master)
    var guess: Code = Code(kind: .guess)
    var attempts: [Code] = []
    var pegChoices: [Peg] = [.red, .green, .blue, .yellow]
}

struct Code {
    var kind: Kind
    var pegs: [Peg] = [.red, .green, .blue, .yellow]

    enum Kind {
        case master
        case guess
        case attempt
        case unknown
    }
}
