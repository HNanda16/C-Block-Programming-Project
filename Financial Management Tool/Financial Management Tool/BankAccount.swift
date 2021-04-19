//
//  BankAccount.swift
//  Financial Management Tool
//
//  Created by Nanda, Hasit (Coll) on 18/04/2021.
//

import SwiftUI

struct BankAccount: View {
    @EnvironmentObject var viewRouter: ViewRouter
    @EnvironmentObject var user: User
    var body: some View {
       
        Text("Your account balance is \(user.balance)")
               
    }
}

struct BankAccount_Previews: PreviewProvider {
    static var previews: some View {
        BankAccount()
    }
}
