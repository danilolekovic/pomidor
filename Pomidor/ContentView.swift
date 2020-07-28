//
//  ContentView.swift
//  Pomidor
//
//  Created by Danilo Lekovic on 2020-07-28.
//  Copyright © 2020 Danilo Lekovic. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var timer: Double = 25
    @State var on = false
    
    var body: some View {
        VStack {
            HStack {
                Text("\(Int(timer)) minutes").foregroundColor(Color.white).font(.title)
                Toggle(isOn: $on) {
                    if (on) {
                        Text("Studying")
                    } else {
                        Text("Paused")
                    }
                }.foregroundColor(Color.white)
            }
            
            Slider(value: $timer, in: 5...60, step: 5).foregroundColor(Color.white).padding()
        }
        .frame(width: 500, height: 500)
        .toggleStyle(SwitchToggleStyle())
        .background(Color.red)
        .opacity(0.7)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
