//
//  AddToCartDetailView.swift
//  E-Commerce-SwiftUI
//
//  Created by hakkı can şengönül on 13.06.2022.
//

import SwiftUI

struct AddToCartDetailView: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var shop : Shop
    
    
    // MARK: - BODY
    var body: some View {
        Button {
            feedback.impactOccurred()
            
        } label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.title2)
                .bold()
                .foregroundColor(.white)
            Spacer()
        }
        .padding(15)
        .background(Color(red:shop.selectedProduct?.red ??  sampleProduct.red, green:shop.selectedProduct?.green ??  sampleProduct.green, blue:shop.selectedProduct?.blue ??  sampleProduct.blue))
        .clipShape(Capsule())
        
    }
}



// MARK: - PREVIEW
struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .previewLayout(.sizeThatFits)
            .padding().environmentObject(Shop())
    }
}
