//
//  ContentView.swift
//  Moonshot
//
//  Created by Radu Edward-Andrei on 06.03.2026.
//

import SwiftUI

struct ContentView: View {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")

    @State private var showingGrid = true

    var body: some View {
        NavigationStack {
            Group {
                if showingGrid {
                    GridLayoutView(
                        astronauts: astronauts,
                        missions: missions
                    )
                } else {
                    ListLayoutView(
                        astronauts: astronauts,
                        missions: missions
                    )
                }
            }
            .navigationTitle("Moonshot")
            .toolbar {
                Button {
                    showingGrid.toggle()
                } label: {
                    Image(systemName: showingGrid ? "list.bullet" : "square.grid.2x2")
                }
            }
            .background(.darkBackground)
            .preferredColorScheme(.dark)
        }
    }
}

#Preview {
    ContentView()
}
