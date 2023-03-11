//
//  StickyHeader.swift
//  StickyHeader
//
//  Created by Satyadev Chauhan on 11/03/23.
//

import SwiftUI

struct StickyHeader<Content: View>: View {
    
    var minHeight: CGFloat
    var content: Content
    
    init(minHeight: CGFloat = 200, @ViewBuilder content: () -> Content) {
        self.minHeight = minHeight
        self.content = content()
    }
    
    var body: some View {
        GeometryReader { geo in
            if (geo.frame(in: .global).minY <= 0) {
                content
                    .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
            } else {
                content
                    .offset(y: -geo.frame(in: .global).minY)
                    .frame(width: geo.size.width, height: geo.size.height + geo.frame(in: .global).minY)
            }
        }.frame(minHeight: minHeight)
    }
}

struct StickyHeader_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView(.vertical, showsIndicators: false) {
            StickyHeader {
                Image("cover")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            }
            
            // Scroll View Content Here
            // ...
        }
    }
}
