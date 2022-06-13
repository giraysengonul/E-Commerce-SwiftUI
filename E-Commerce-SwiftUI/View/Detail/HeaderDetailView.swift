//
//  HeaderDetailView.swift
//  E-Commerce-SwiftUI
//
//  Created by hakkı can şengönül on 13.06.2022.
//

import SwiftUI

struct HeaderDetailView: View {
    // MARK: - PROPERTIES
    
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Protective Gear")
            
            Text(sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        }//:VStack
        .foregroundColor(.white)
    }
}


// MARK: - PREVIEW
struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(.gray)
    }
}
