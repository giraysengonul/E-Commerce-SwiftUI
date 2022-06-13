//
//  CategoryItemView.swift
//  E-Commerce-SwiftUI
//
//  Created by hakkı can şengönül on 13.06.2022.
//

import SwiftUI

struct CategoryItemView: View {
    // MARK: - PROPERTIES
    let category : Category
    
    // MARK: - BODY
    var body: some View {
        Button {
            
        } label: {
            HStack (alignment: .center, spacing: 6){
                Image(category.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(.gray)
                
                Text(category.name.uppercased())
                    .bold()
                    .foregroundColor(.gray)
                Spacer()
            }//HStack
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(.gray,lineWidth: 1)
            )
        }
        
    }
}


// MARK: - PREVIEW
struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(category: categories[0]).previewLayout(.sizeThatFits)
            .padding().background(colorBackground)
    }
}
