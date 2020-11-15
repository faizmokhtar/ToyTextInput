//
//  ContentView.swift
//  ToyTextInput
//
//  Created by Faiz Mokhtar AD0502 on 15/11/2020.
//

import SwiftUI

struct ContentView: View {
    @State var showTextView = false

    var body: some View {
        NavigationView {
            Text("hello world")
                .sheet(isPresented: $showTextView, content: {
                    NavigationView {
                        TextView()
                    }
                })
                .navigationBarTitle("Toy")
                .navigationBarItems(trailing:
                    Button("Write", action: {
                        self.showTextView.toggle()
                    })
                )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
