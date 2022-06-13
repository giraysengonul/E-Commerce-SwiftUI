//
//  ProductDetailView.swift
//  E-Commerce-SwiftUI
//
//  Created by hakkı can şengönül on 13.06.2022.
//

import SwiftUI

struct ProductDetailView: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var shop : Shop
    
    // MARK: - BODY
    var body: some View {
        
        VStack(alignment: .leading, spacing: 5) {
            //NAVBAR
            NavigatonBarDetailView()
                .padding(.horizontal)
                .padding(.top,UIApplication.shared.safeAreaInsets?.top)
            //HEADER
            HeaderDetailView()
                .padding(.horizontal)
            //DETAIL TOP PART
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            //DETAIL BOTTOM PART
            VStack(alignment: .center, spacing: 0) {
                //RATING + SIZED
                RatingssizeDetailView()
                    .padding(.top,-20)
                    .padding(.bottom,10)
                //DESCRIPTION
                ScrollView(.vertical, showsIndicators: false) {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body,design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }
                
                //QUANTITY + FAVORITE
                QuantityFavauriteDetailView()
                    .padding(.vertical,10)
                //ADD TO CARD
                AddToCartDetailView()
                    .padding(.bottom,20)
                Spacer()
            }//:VStack
            .padding()
            .background(Color.white.clipShape(CustomShape())
                .padding(.top,-105)
            )
            
            
        }//: VStack
        .zIndex(0)
        .ignoresSafeArea(.all,edges: .all)
        .background(
            Color(red:shop.selectedProduct?.red ?? sampleProduct.red, green:shop.selectedProduct?.green ??  sampleProduct.green, blue:shop.selectedProduct?.blue ?? sampleProduct.blue)
                .ignoresSafeArea(.all,edges: .all)
        )
    }
}



// MARK: - PREVIEW
struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView().previewLayout(.fixed(width: 375, height: 812)).environmentObject(Shop())
    }
}
