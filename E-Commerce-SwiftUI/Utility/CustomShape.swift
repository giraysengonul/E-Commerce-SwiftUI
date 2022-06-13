//
//  CustomShape.swift
//  E-Commerce-SwiftUI
//
//  Created by hakkı can şengönül on 13.06.2022.
//

import SwiftUI

struct CustomShape: Shape {
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft,.topRight], cornerRadii: CGSize(width: 35, height: 35))
        
        return Path(path.cgPath)
    }
    
    
}

struct CustomShape_Previews: PreviewProvider {
    static var previews: some View {
        CustomShape().previewLayout(.fixed(width: 428, height: 120)).padding()
    }
}
