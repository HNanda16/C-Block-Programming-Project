//
//  WelcomeView.swift
//  Financial Management Tool
//
//  Created by Nanda, Hasit (Coll) on 18/04/2021.
//

import SwiftUI

struct WelcomeView: View {
    
    @EnvironmentObject var user: User
  
  
  private enum PresentedView {
    case login
    case register
  }
  
  @State private var presentedView: PresentedView?
  
  var body: some View {
    VStack(alignment: .leading) {
           
      VStack(spacing: 30) {
        NavigationLink(destination: LoginPage()) {
          Text("Login")
        }.padding()
      
        NavigationLink(destination: EmptyView()) {
          Text("Signup")
        }
      }
      .padding([.leading, .bottom, .trailing])
      .padding(.top, 40)
      
      
    }
    .navigationBarTitle("Create an account")
    .environmentObject(user)

  }
  
}

struct WelcomeView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      NavigationView {
        WelcomeView()
          
      }
    }
  }
}
