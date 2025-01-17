//
//  DetailView.swift
//  TravelVista
//
//  Created by Alassane Der on 16/01/2025.
//

import SwiftUI

struct DetailView: UIViewControllerRepresentable {
    var country: Country
    
    func makeUIViewController(context: Context) -> some UIViewController {
        guard let detailVC = UIStoryboard(name: "Main", bundle: .main)
            .instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController else {
            fatalError()
        }
        detailVC.country = country
        return detailVC
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        //
    }
}
