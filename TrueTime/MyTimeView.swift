//
//  MyTimeView.swift
//  TrueTime
//
//  Created by Virgile Vercellis on 14/06/2021.
//

import SwiftUI

struct MyTimeView: View {
    
    @State private var showDetails = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Avez-vous pris du temps pour vous aujourd'hui?")
                ZStack{
                    Button("Show details") {
                        showDetails.toggle()
                    }
                    if showDetails {
                        Text("Nice! Keep going!")
                            .font(.largeTitle)
                    }
                }
            }
            .navigationTitle("True Time")
        }
        
    }
}

struct MyTimeView_Previews: PreviewProvider {
    static var previews: some View {
        MyTimeView()
    }
}
