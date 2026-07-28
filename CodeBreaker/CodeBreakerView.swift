//
//  CodeBreakerView.swift
//  CodeBreaker
//
//  Created by Joao Paulo on 22/06/26.
//

import SwiftUI

struct CodeBreakerView: View {
    let game = CodeBreaker()

    var body: some View {
        VStack {
            view(for: game.masterCode)
            view(for: game.guess)
//           pegs(colors: game.attempts[0].pegs)
        }
        .padding()
    }

    func view(for code: Code) -> some View {
        HStack {
            ForEach(code.pegs.indices, id: \.self) {
                RoundedRectangle(cornerRadius: 10)
                    .aspectRatio(1, contentMode: .fit)
                    .foregroundColor(code.pegs[$0])
            }

            MatchMarkers(
                matches: [.exact, .inexact, .nomatch, .exact]
            )
        }
    }
}

#Preview {
    CodeBreakerView()
}
