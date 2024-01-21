//
//  ContentView.swift
//  Math+-x÷
//
//  Created by  Adam-James  Cooper on 2024-01-16.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: Stored Properties Addition
    @State var base1: Int = 1
    @State var baseAdd: Int = 1
    //MARK: Stored Properties Substraction
    @State var base2: Int = 1
    @State var baseSub: Int = 1
    //MARK: Stored Properties Multiplication
    @State var base3: Int = 1
    //MARK: Stored Properties Division
    @State var base4: Int = 1
    
    //MARK: Computed potatos. Properties
    //Addition
    var addition: Int {
        return base1 + baseAdd
    }
    //Subtraction
    var subtaction: Int {
        return base2 - baseSub
    }
    
    
    var body: some View {
        TabView {
                 // Addition tab
                 NavigationView {
                     //Vertical stack
                     VStack {
                         //First Number
                         HStack {
                            Spacer()
                             Text("\(base1)")
                                 .font(.system(size: 72))
                                 .padding()
                         }
                         //Stepper First Number
                         HStack {
                             Stepper(value: $base1, label: {
                                 Text("Select first number")
                             })
                             .padding()
                         }
                         //Second Number
                         HStack {
                             Image(systemName: "plus")
                                 .font(.system(size: 60))
                             Spacer()
                             Text("\(baseAdd)")
                                 .font(.system(size: 72))
                                 .padding()
                         }
                         //Stepper Second Number
                         HStack {
                             Stepper(value: $baseAdd, label: {
                                 Text("Select first number")
                             })
                             .padding()
                         }
                         //Answer
                         HStack {
                            Spacer()
                             Text("\(addition)")
                                 .font(.system(size: 72))
                                 .padding()
                         }
                         
                        
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
                         //First Number
                         HStack {
                            Spacer()
                             Text("\(base2)")
                                 .font(.system(size: 72))
                                 .padding()
                         }
                         //Stepper First Number
                         HStack {
                             Stepper(value: $base2, label: {
                                 Text("Select first number")
                             })
                             .padding()
                         }
                         //Second Number
                         HStack {
                             Spacer()
                             Text("\(baseSub)")
                                 .font(.system(size: 72))
                                 .padding()
                         }
                         //Stepper Second Number
                         HStack {
                             Stepper(value: $baseSub, label: {
                                 Text("Select first number")
                             })
                             .padding()
                         }
                         //Answer
                         HStack {
                            Spacer()
                             Text("\(subtaction)")
                                 .font(.system(size: 72))
                                 .padding()
                         }
                         
                        
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

