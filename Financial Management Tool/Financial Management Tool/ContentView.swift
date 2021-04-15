//
//  ContentView.swift
//  Financial Management Tool
//
//  Created by Nanda, Hasit (Coll) on 24/03/2021.
//

import SwiftUI

struct ContentView : View {
    
    @State var username: String = ""
    @State var password: String = ""
    @State var status: String = "Login"
    
    var body: some View {
        
        VStack {
            
            
            TextField("Username", text: $username)
                .padding()
                .cornerRadius(5.0)
                .background(Color.gray)
                .foregroundColor(.black)
                .padding(.bottom, 20)
            SecureField("Password", text: $password)
                .padding()
                .background(Color.gray)
                .foregroundColor(.black)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
            
            
        }
        .background(Color.gray)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
