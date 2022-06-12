//
//  FooterVıew.swift
//  E-Commerce-SwiftUI
//
//  Created by hakkı can şengönül on 12.06.2022.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10){
            Text("We offer the most cutting edge, comfortable, lightweight and durable football helmets in the market at affordable prices")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundColor(.gray).layoutPriority(0)
            
            Text("Copyright © Hakkı Can ŞENGÖNÜL \nAll right reserved")
                .fontWeight(.bold)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
                .font(.footnote)
               
            
        }//VStack
        .padding()
        
        
        
        
    }
}

struct FooterV_ew_Previews: PreviewProvider {
    static var previews: some View {
        FooterView().previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
