//
//  ListViewViewModel.swift
//  TravelVista
//
//  Created by Alassane Der on 17/01/2025.
//

import Foundation

final class ListViewModel: ObservableObject {
    @Published var region: [Region] = Service().load("Source.json")
    
//    private func loadDatas() {
//        region = Service().load("Source.json")
//    }
}
