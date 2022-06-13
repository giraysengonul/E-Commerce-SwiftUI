//
//  CategoryGridView.swift
//  E-Commerce-SwiftUI
//
//  Created by hakkı can şengönül on 13.06.2022.
//

import SwiftUI

struct CategoryGridView: View {
    // MARK: - PROPERTIS
    
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: []) {
                
                Section( header:
                            SectionView(rotateClockwise: false)
                         , footer:
                            SectionView(rotateClockwise: true)
                ) {
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    }
                }
                
                
            }//LazyGrid
            .frame(height:140)
            .padding(.horizontal,15)
            .padding(.vertical,10)
            
            
        }
        
        
    }
}


// MARK: - PREVIEW
struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
