//
//  ContentView.swift
//  Navigation
//
//  Created by kayla saniei on 8/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            NavigationLink(destination: SecondView()) {
                Text("Take me to a new view!")
            }
            VStack {
                Text("This is the root view 🌳")
           }
            .toolbar {
                ToolbarItemGroup(placement: .status) {
                            NavigationLink(destination: SecondView()) {
                        Text("About")
                    }
                }
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
