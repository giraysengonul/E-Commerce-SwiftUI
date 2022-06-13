//
//  Shop.swift
//  E-Commerce-SwiftUI
//
//  Created by hakkı can şengönül on 13.06.2022.
//

import Foundation

class Shop : ObservableObject{
    @Published var showingProduct : Bool = false
    @Published var selectedProduct : Product? = nil
}

