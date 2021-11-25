//
//  CustomShape.swift
//  UI-326 (iOS)
//
//  Created by nyannyan0328 on 2021/10/12.
//

import SwiftUI

struct CustomShape: Shape {
    func path(in rect: CGRect) -> Path {
        return Path{path in
            
            path.move(to: CGPoint(x: 0, y: 0))
            
            path.addLine(to: CGPoint(x: 0, y: rect.height))
            
            
            let midWidht = rect.width / 2
            
            path.addLine(to: CGPoint(x: midWidht - 80, y: rect.height))
            
            path.addLine(to: CGPoint(x: midWidht - 70, y: rect.height - 25))
            
            path.addLine(to: CGPoint(x: midWidht + 70, y: rect.height - 25))
            
            
            path.addLine(to: CGPoint(x: midWidht + 80, y: rect.height))
            
            
            
            
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            
            path.addLine(to: CGPoint(x: rect.width, y: 0))
            
            
          
            
            
            
        }
    }
}

struct Home_Previews1: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

