//
//  ContentView.swift
//  TrueTime
//
//  Created by Virgile Vercellis on 11/06/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            MyTime()
                .tabItem {
                    Image(systemName: "hourglass")
                    Text("First Tab")
                }
            
            Historic()
                .tabItem {
                    Image(systemName: "square.grid.4x3.fill")
                    Text("My Follow")
                }
        }
    }
}

struct MyTime: View {
    var body: some View {
        MyTimeView()
    }
}

struct Historic: View {
    var body: some View {
        HistoricView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
