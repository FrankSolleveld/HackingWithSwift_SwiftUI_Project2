//
//  ContentView.swift
//  Project2
//
//  Created by Frank Solleveld on 24/05/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false
    var body: some View {
        Button("Show Alert") {
            self.showingAlert = true
        }
        .alert(isPresented: $showingAlert, content: {
            Alert(title: Text("Hello SwiftUI"), message: Text("This is a detail message."), dismissButton: .default(Text("Dismiss")))
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
