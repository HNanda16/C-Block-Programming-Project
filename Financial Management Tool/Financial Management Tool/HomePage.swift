//
//  HomePage.swift
//  Financial Management Tool
//
//  Created by Nanda, Hasit (Coll) on 18/04/2021.
//


import SwiftUI


struct CustomTabBarTempApp: App {
    
    @StateObject var viewRouter = ViewRouter()
    
    var body: some Scene {
        WindowGroup {
            HomePage(viewRouter: viewRouter)
        }
    }
}


struct HomePage: View {
        
    @ObservedObject var viewRouter: ViewRouter
    @EnvironmentObject var user: User
    var body: some View {
        
        
        GeometryReader { geometry in
            VStack{
                Spacer()
                switch viewRouter.currentPage {
                case .home:
                    Text("Home")
                case .bank:
                    Text("Bank")
                case .user:
                    Text("User")
                }
                Spacer()
                HStack {
                    
                    TabBarIcon(viewRouter: viewRouter, assignedPage: .home, width: geometry.size.width/3, height: geometry.size.height/28, systemIconName: "homekit", tabName: "Home")
                    
                    
                    TabBarIcon(viewRouter: viewRouter, assignedPage: .bank, width: geometry.size.width/3, height: geometry.size.height/28, systemIconName: "building.columns", tabName: "Bank")
                    
                    
                    TabBarIcon(viewRouter: viewRouter, assignedPage: .user, width: geometry.size.width/3, height: geometry.size.height/28, systemIconName: "person.crop.circle", tabName: "Account")
                    
                 }.frame(width: geometry.size.width, height: geometry.size.height/8)
                .background(Color.gray)
            }
            .edgesIgnoringSafeArea(.bottom)
        }
        
        
    }
}

struct TabBarIcon: View {
    
    @ObservedObject var viewRouter: ViewRouter
    let assignedPage: Page
    
    let width, height: CGFloat
    let systemIconName, tabName: String
     
     
    var body: some View {
        VStack {
            Image(systemName: systemIconName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: width, height: height)
                .padding(.top, 10)
            Text(tabName)
                .font(.footnote)
            Spacer()
        }
        .foregroundColor(.black)
        .padding(.horizontal, -4)
        .onTapGesture {
            viewRouter.currentPage = assignedPage
        }
        
    }
}

struct HomePage_Previews: PreviewProvider {
    
    static var previews: some View {
        HomePage(viewRouter: ViewRouter())
    }
}

