//
//  LogoView.swift
//  E-Commerce-SwiftUI
//
//  Created by hakkı can şengönül on 12.06.2022.
//

import SwiftUI

struct LogoView: View {
    // MARK: - PROPERTIES
    
    
    
    // MARK: - BODY
    var body: some View {
        
        HStack( spacing: 4) {
            
            Text("Touch".uppercased())
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(.black)
            
            Image("logo-dark")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: .center)
            
            Text("Down".uppercased())
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(.black)
        }
    }
}


// MARK: - PREVIEW
struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView().previewLayout(.sizeThatFits)
            .padding()
    }
}
