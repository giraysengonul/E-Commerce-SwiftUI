//
//  SectionView.swift
//  E-Commerce-SwiftUI
//
//  Created by hakkı can şengönül on 13.06.2022.
//

import SwiftUI

struct SectionView: View {
    // MARK: - PROPERTIES
    @State var rotateClockwise : Bool
    // MARK: - BODY
    var body: some View {
        VStack(spacing:0) {
            Spacer()
            Text("Categories".uppercased())
                .foregroundColor(.white)
                .font(.footnote)
                .fontWeight(.bold)
                .rotationEffect(Angle(degrees:rotateClockwise ? 90: -90))
            
            Spacer()
        }//VStack
        .background(colorGray.cornerRadius(12))
        .frame(width:85)
    }
}


// MARK: - PROVIEW
struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotateClockwise: false)
            .previewLayout(.fixed(width: 120, height: 240))
    }
}
