//
//  NavigationBarView.swift
//  E-Commerce-SwiftUI
//
//  Created by hakkı can şengönül on 12.06.2022.
//

import SwiftUI

struct NavigationBarView: View {
     // MARK: - PROPERTIES
    @State private var isAnimating : Bool = false
    
    
     // MARK: - BODY
    var body: some View {
        HStack {
            Button {
                
            } label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            
            }//ButtonLabel
            Spacer()
            LogoView()
                .opacity(isAnimating ? 1 : 0)
                .offset(x: 0, y: isAnimating ? 0 : -25)
                .onAppear {
                withAnimation(.easeOut(duration: 0.5)) {
                    isAnimating.toggle()
                }
            }
            Spacer()
            Button {
                
            } label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                    .foregroundColor(.black)
                    
                    Circle().frame(width: 14, height: 14, alignment: .center)
                        .offset(x: 13, y: -10)
                }
            
            }//ButtonLabel
            

        }
        .padding()
    }
}


 // MARK: - PREVIEW
struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView().previewLayout(.sizeThatFits)
            .padding()
    }
}
