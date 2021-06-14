//
//  MyTimeView.swift
//  TrueTime
//
//  Created by Virgile Vercellis on 14/06/2021.
//

import SwiftUI

struct MyTimeView: View {
    
    @State private var showDetails = false
    @State private var showDetails2 = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Avez-vous pris du temps pour vous aujourd'hui?")
                VStack{
                    HStack{
                        Button("No time 🙅‍♂️") {
                            showDetails.toggle()
                        }
                        Button("5 Min ☺️") {
                            showDetails.toggle()
                        }
                        Button("15 Min 🥳") {
                            showDetails.toggle()
                        }
                        Button("30 Min 🧘‍♂️") {
                            showDetails.toggle()
                        }
                    }
                }
                if showDetails {
                    Text("Nice! Keep going!")
                        .font(.largeTitle)
                }
                VStack{
                    HStack{
                        Button("1 Hour 🌅") {
                            showDetails2.toggle()
                        }
                        Button("2 Hour 🌄") {
                            showDetails2.toggle()
                        }
                        Button("5 Hour 🔥") {
                            showDetails2.toggle()
                        }
                        Button("All Day 🤯") {
                            showDetails2.toggle()
                        }
                    }
                }
                if showDetails2 {
                    Text("Insane!")
                        .font(.largeTitle)
                }
            }.navigationTitle("True Time")
        }
    }
    
}

struct MyTimeView_Previews: PreviewProvider {
    static var previews: some View {
        MyTimeView()
    }
}
