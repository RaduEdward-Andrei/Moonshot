//
//  ListLayoutView.swift
//  Moonshot
//
//  Created by Radu Edward-Andrei on 23.03.2026.
//

import SwiftUI

struct ListLayoutView: View {
    let astronauts: [String: Astronaut]
    let missions: [Mission]

    var body: some View {
        List(missions) { mission in
            NavigationLink {
                MissionView(
                    mission: mission,
                    astronauts: astronauts
                )
            } label: {
                MissionRowView(mission: mission)
            }
            .listRowBackground(Color.darkBackground)
            .listRowSeparator(.hidden)
        }
        .listStyle(.plain)
        .scrollContentBackground(.hidden)
        .background(.darkBackground)
    }
}

#Preview {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let missions: [Mission] = Bundle.main.decode("missions.json")

    return NavigationStack {
        ListLayoutView(
            astronauts: astronauts,
            missions: missions
        )
        .preferredColorScheme(.dark)
    }
}
