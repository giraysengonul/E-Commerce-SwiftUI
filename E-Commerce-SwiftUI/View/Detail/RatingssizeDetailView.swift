//
//  RatingssizeDetailView.swift
//  E-Commerce-SwiftUI
//
//  Created by hakkı can şengönül on 13.06.2022.
//

import SwiftUI

struct RatingssizeDetailView: View {
    // MARK: - PROPERTIES
    let sizes : [String] = ["XS","S","M","L","XL"]
    
    // MARK: - BODY
    var body: some View {
        HStack(alignment: .top, spacing: 3) {
            
            //Ratings
            VStack(alignment: .leading, spacing: 3) {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                HStack(alignment: .center, spacing: 3) {
                    ForEach(1...5,id: \.self){item in
                        Button {
                            
                        } label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(colorGray.cornerRadius(5))
                                .foregroundColor(.white)
                        }
                        
                        
                    }
                    
                }
                
                
            }//:VStack
            
            Spacer()
            VStack(alignment: .trailing, spacing: 3) {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center, spacing: 5) {
                    ForEach(sizes,id: \.self){size in
                        Button {
                            
                        } label: {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundColor(colorGray)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(Color.white.cornerRadius(5))
                                .background(RoundedRectangle(cornerRadius: 5).stroke(lineWidth: 2))
                        }
                        
                        
                    }
                }
                
                
            }
        }//HStack
    }
}


// MARK: - PREVIEW
struct RatingssizeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RatingssizeDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
