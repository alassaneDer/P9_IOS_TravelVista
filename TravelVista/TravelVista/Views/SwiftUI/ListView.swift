//
//  ListView.swift
//  TravelVista
//
//  Created by Alassane Der on 16/01/2025.
//

import SwiftUI

struct ListView: View {
    var region: [Region]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(region, id: \.name) { region in
                    Section {
                        ForEach(region.countries, id: \.name) { country in
                            CustomCellSwiftUI(country: country)
                        }
                    } header: {
                        Text(region.name)
                    }
                    
                }
            }.listStyle(PlainListStyle())
                .navigationTitle("liste de voyages")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ListView(region: [
        Region(
            name: "Region1",
            countries: [
                Country(name: "Country1", capital: "Capital1", description: "description for country 1.description for country 1.description for country 1.description for country 1.description for country 1.description for country 1.", rate: 4, pictureName: "vietnam", coordinates: Coordinates(latitude: 1, longitude: 1)),
                Country(name: "Country2", capital: "Capital2", description: "description for country 2.description for country 2.description for country 2.description for country 2.description for country 2.description for country 2.", rate: 3, pictureName: "vietnam", coordinates: Coordinates(latitude: 2, longitude: 2))
            ]
        ),
        Region(
            name: "Region2",
            countries: [
                Country(name: "Country3", capital: "Capital3", description: "description for country 3.description for country 3.description for country 3.description for country 3.description for country 3.description for country 3.", rate: 5, pictureName: "vietnam", coordinates: Coordinates(latitude: 3, longitude: 3))
            ]
        )
    ])
}
