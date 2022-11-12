//
//  ContentView.swift
//  JokesApp
//
//  Created by Ekin Atasoy on 8.11.2022.
//

//
import SwiftUI

struct ContentView: View {
    @ObservedObject var jokesVM = JokesViewModel()
    var body: some View {
        NavigationView {
            List(jokesVM.jokes, id: \.id){element in
                Text(element.joke).padding()
            }.toolbar(content: {
                Button {
                    addjoke()
                } label: {
                    Text("Get New")
                }

            })
            .navigationTitle("Jokes")
        }
    }
    func addjoke(){
        //print("New added")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
