//
//  ProductItemView.swift
//  E-Commerce-SwiftUI
//
//  Created by hakkı can şengönül on 13.06.2022.
//

import SwiftUI

struct ProductItemView: View {
    // MARK: - PROPERTIES
    let product : Product
    
    // MARK: - BODY
    var body: some View {
        VStack (alignment:.leading){
            //Image
            ZStack(alignment: .leading) {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }//ZStack
            .background(Color(red: product.red, green: product.green, blue: product.blue))
            .cornerRadius(12)
            //Name
            Text(product.name)
                .font(.title3)
                .fontWeight(.bold)
            //Price
            Text(product.formattedPrice)
                .font(.title3)
                .foregroundColor(.gray)
        }//VStack
    }
}


// MARK: - PREVIEW
struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[1]).previewLayout(.fixed(width: 200, height: 300))
            .padding()
            .background(colorBackground)
    }
}
