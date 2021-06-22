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
    @State var date = Date()
    var timeFormat: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE d MMMM yyyy - HH:mm"
        return formatter
    }
    func timeString(date: Date) -> String {
         let time = timeFormat.string(from: date)
         return time
    }
    
    var body: some View {
        NavigationView {
            VStack {
                Text("\(timeString(date: date))")
                Text("Avez-vous pris du temps pour vous aujourd'hui?")
                    .font(.title)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .padding()
                Text("Le temps pris POUR vous peut correspondre a plusieurs activités : Médiation, détente, accomplissement personnel...")
                VStack{
                    HStack{
                        Button("No time") {
                            showDetails.toggle()
                        }
                        .buttonStyle(BlueButton())
                        Button("5 Min") {
                            showDetails.toggle()
                        }
                        .buttonStyle(BlueButton())
                        Button("15 Min") {
                            showDetails.toggle()
                        }
                        .buttonStyle(BlueButton())
                        Button("30 Min") {
                            showDetails.toggle()
                        }
                        .buttonStyle(BlueButton())
                    }
                }
                if showDetails {
                    Text("Nice! Keep going!")
                        .font(.largeTitle)
                }
                VStack{
                    HStack{
                        Button("1 Hour") {
                            showDetails2.toggle()
                        }
                        .buttonStyle(BlueButton())
                        Button("2 Hour") {
                            showDetails2.toggle()
                        }
                        .buttonStyle(BlueButton())
                        Button("5 Hour") {
                            showDetails2.toggle()
                        }
                        .buttonStyle(BlueButton())
                        Button("All Day") {
                            showDetails2.toggle()
                        }
                        .buttonStyle(BlueButton())
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

struct BlueButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(Color(red: 0, green: 0, blue: 0.5))
            .foregroundColor(.white)
            .clipShape(Capsule())
    }
}

struct MyTimeView_Previews: PreviewProvider {
    static var previews: some View {
        MyTimeView()
            .environment(\.locale, Locale(identifier: "fr"))
    }
}
