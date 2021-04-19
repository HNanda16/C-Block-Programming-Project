//
//  LoginPage.swift
//  Financial Management Tool
//
//  Created by Nanda, Hasit (Coll) on 18/04/2021.
//

import SwiftUI


struct LoginPage: View {
    
    @EnvironmentObject var user:User
    
    @State var username: String = ""
    @State var password: String = ""
    @State var valid: Bool = false
    
    
    var body: some View {
        
        
        VStack(alignment: .leading) {
            VStack {
                TextField("Username", text: $username)
                    .padding()
                    .cornerRadius(5.0)
                    .foregroundColor(.black)
                    .padding(.bottom, 20)
                SecureField("Password", text: $password)
                    .padding()
                    
                    .foregroundColor(.black)
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                NavigationLink(destination: HomePage(viewRouter: ViewRouter())) {
                  Text("Login")
                }.padding()
                
                Spacer()
            }
        }.navigationBarTitle("Login Page")
        .environmentObject(user)
       
        
    }
}

struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage()
    }
}
