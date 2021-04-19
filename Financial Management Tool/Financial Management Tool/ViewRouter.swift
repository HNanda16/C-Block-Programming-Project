//
//  ViewRouter.swift
//  Financial Management Tool
//
//  Created by Nanda, Hasit (Coll) on 18/04/2021.
//

import Foundation
import SwiftUI

class ViewRouter: ObservableObject {
     @Published var currentPage: Page = .home
         
}

enum Page {
     case home
     case bank
     case user
 }


