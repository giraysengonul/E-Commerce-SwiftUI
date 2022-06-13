//
//  AddToCartDetailView.swift
//  E-Commerce-SwiftUI
//
//  Created by hakkı can şengönül on 13.06.2022.
//

import SwiftUI

struct AddToCartDetailView: View {
    // MARK: - PROPERTIES
    
    
    
    // MARK: - BODY
    var body: some View {
        Button {
            
            
        } label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.title2)
                .bold()
                .foregroundColor(.white)
            Spacer()
        }
        .padding(15)
        .background(Color(red: sampleProduct.red, green:  sampleProduct.green, blue:  sampleProduct.blue))
        .clipShape(Capsule())
        
    }
}



// MARK: - PREVIEW
struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
