//
//  GridLayout.swift
//  Moonshot
//
//  Created by Radu Edward-Andrei on 23.03.2026.
//

import SwiftUI

struct GridLayoutView: View {
    let astronauts: [String: Astronaut]
    let missions: [Mission]

    private let columns = [
        GridItem(.adaptive(minimum: 150))
    ]

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(missions) { mission in
                    NavigationLink {
                        MissionView(
                            mission: mission,
                            astronauts: astronauts
                        )
                    } label: {
                        MissionRowView(mission: mission)
                    }
                }
            }
            .padding([.horizontal, .bottom])
        }
        .background(.darkBackground)
    }
}

#Preview {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")

    return NavigationStack {
        GridLayoutView(
            astronauts: astronauts,
            missions: missions
        )
        .preferredColorScheme(.dark)
    }
}
