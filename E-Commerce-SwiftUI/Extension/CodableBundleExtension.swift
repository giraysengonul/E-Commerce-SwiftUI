//
//  CodableBundleExtension.swift
//  E-Commerce-SwiftUI
//
//  Created by hakkı can şengönül on 12.06.2022.
//

import Foundation

extension Bundle {
    
    func decode<T: Codable>(_ file: String) -> T {
        
        //1.file location
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        //2.data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) in bundle.")
        }
        //3.decode
        let decoder = JSONDecoder()
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) in bundle.")
        }
        
        return decodedData
        
        
        
        
    }//decode Func
    
    
}//ExtensionBundle

