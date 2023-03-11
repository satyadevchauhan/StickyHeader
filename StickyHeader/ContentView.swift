//
//  ContentView.swift
//  StickyHeader
//
//  Created by Satyadev Chauhan on 11/03/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            StickyHeader {
                ZStack {
                    Color(red: 35/255, green: 45/255, blue: 50/255)
                    VStack {
                        Text("Joshua Tree")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        Text("California")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                    }
                }
            }

            // Scroll View Content Here
            // ...
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
