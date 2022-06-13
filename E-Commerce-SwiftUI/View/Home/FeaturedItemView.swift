//
//  FeaturedItemView.swift
//  E-Commerce-SwiftUI
//
//  Created by hakkı can şengönül on 12.06.2022.
//

import SwiftUI

struct FeaturedItemView: View {
    // MARK: - PROPERTIES
    let player : Player
    
    // MARK: - BODY
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
        
    }
}


// MARK: - PREVIEW
struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(player: players[3]).previewLayout(.sizeThatFits).padding().background(colorBackground)
    }
}
