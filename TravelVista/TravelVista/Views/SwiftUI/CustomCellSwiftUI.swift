//
//  CustomCellSwiftUI.swift
//  TravelVista
//
//  Created by Alassane Der on 16/01/2025.
//

import SwiftUI

struct CustomCellSwiftUI: View {
    var country: Country
    
    var body: some View {
        HStack {
            Image(country.pictureName)
                .resizable()
                .frame(width: 52, height: 52)
                .scaledToFit()
                .clipShape(Circle())
            
            VStack(alignment: .leading) {
                Text(country.name)
                    .font(.system(size: 20.0))
                    .foregroundStyle(Color.customBlue)
                    .padding(.bottom, 3)
                Text(country.capital)
                    .font(.system(size: 15.0))
                    .padding(.bottom, 5)
            }

            
            Spacer()
            
            Text("\(country.rate)")
                .font(.system(size: 17.0))
            Image(systemName: "star.fill")
                .font(.system(size: 32.0))
                .foregroundColor(.customSand)
        }
//        .padding()
    }
}

#Preview {
    CustomCellSwiftUI(country: Country(name: "Sénégal", capital: "Dakar", description: "", rate: 4, pictureName: "vietnam", coordinates: Coordinates(latitude: 000000, longitude: 111111)))
}
