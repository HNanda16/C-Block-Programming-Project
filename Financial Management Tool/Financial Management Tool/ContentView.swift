//
//  ContentView.swift
//  Financial Management Tool
//
//  Created by Nanda, Hasit (Coll) on 24/03/2021.
//

import SwiftUI
import UIKit


class User: ObservableObject {
    @Published var balance: Double = 0
}

struct ContentView : View {
    
    @ObservedObject var user = User()
 
   
    var body: some View {
        
        NavigationView{
            NavigationLink(destination: WelcomeView()){
                Text("Start")
            }
        }.navigationTitle("Start")
        .environmentObject(user)
     
    }
        
}
    



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
