//
//  TitleViewSwiftUI.swift
//  TravelVista
//
//  Created by Alassane Der on 15/01/2025.
//

import SwiftUI

struct TitleViewSwiftUI: View {
    var country: Country
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(country.name)
                    .font(.system(size: 22, weight: .medium))
                    .foregroundStyle(Color.customBlue)
                Text(country.capital)
                    .font(.system(size: 17.0))
                    .foregroundStyle(Color(hex: "#555555"))
            }
            Spacer()
            HStack(spacing: 0) {
                ForEach(0..<country.rate, id: \.self) { _ in
                    Image(systemName: "star.fill")
                        .foregroundStyle(Color.customSand)
                }
            }
        }
        .padding()
    }
}

#Preview {
    TitleViewSwiftUI(country: Country(name: "Senegal", capital: "Dakar", description: "", rate: 4, pictureName: "", coordinates: Coordinates(latitude: 0.0, longitude: 0.0)))
}
