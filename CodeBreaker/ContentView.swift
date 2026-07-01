//
//  ContentView.swift
//  CodeBreaker
//
//  Created by Joao Paulo on 22/06/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            pegs(colors: [.red, .green, .blue, .yellow])
            pegs(colors: [.yellow, .red, .blue, .green])
            pegs(colors: [.red, .blue, .green, .yellow])
        }
        .padding()
    }

    func pegs(colors: [Color]) -> some View {
        HStack {
            ForEach(colors.indices, id: \.self) {
                RoundedRectangle(cornerRadius: 10)
                    .aspectRatio(1, contentMode: .fit)
                    .foregroundColor(colors[$0])
            }

            MatchMarkers(
                matches: [.exact, .inexact, .nomatch, .exact]
            )
        }
    }
}

#Preview {
    ContentView()
}
