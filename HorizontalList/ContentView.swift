//
//  ContentView.swift
//  HorizontalList
//
//  Created by ramil on 21.10.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(0..<5) { i in
                        cardView(img: "img\(i)").padding(6)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct cardView: View {
    
    var img = ""
    var body: some View {
        VStack {
            Image(img)
        }.frame(width: 250, height: 400)
        .cornerRadius(20)
        .shadow(radius: 20)
    }
}
