//
//  ContentView.swift
//  Math+-x÷
//
//  Created by  Adam-James  Cooper on 2024-01-16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
                 // Addition tab
                 NavigationView {
                     VStack {
                         Text("Addition")
                         // Addition content
                     }
                 }
                 .tabItem {
                     Image(systemName: "plus.circle.fill")
                     Text("Addition")
                 }
                 .tag(1)

                 // Subtraction tab
                 NavigationView {
                     VStack {
                         Text("Subtraction")
                         //subtraction content
                     }
                 }
                 .tabItem {
                     Image(systemName: "minus.circle.fill")
                     Text("Subtraction")
                 }
                 .tag(2)

                 // Multiplication tab
                 NavigationView {
                     VStack {
                         Text("Multiplication")
                         //multiplication content
                     }
                 }
                 .tabItem {
                     Image(systemName: "multiply.circle.fill")
                     Text("Multiplication")
                 }
                 .tag(3)

                 // Division tab
                 NavigationView {
                     VStack {
                         Text("Division")
                         //division content
                     }
                 }
                 .tabItem {
                     Image(systemName: "divide.circle.fill")
                     Text("Division")
                 }
                 .tag(4)
             }
         }
     }
#Preview {
    ContentView()
}

