//
//  ContentView.swift
//  WeSplit
//
//  Created by Wesley Patterson on 4/30/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    
    let tipPercentages = [10, 15, 20, 25, 0]
    
    var body: some View {
        
        NavigationView {
            Form {
                Section {
                    TextField("Amount", value: $checkAmount, format:
                            .currency(code: Locale.current.currencyCode ?? "USD"))
                    
                    Picker("Number of people", selection: $numberOfPeople){
                        ForEach(2..<100) {
                            Text("\($0) people")
                        }
                    }
                }
                
                Section {
                    Text(checkAmount, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                        .keyboardType(.decimalPad)
                }
            }
            .navigationTitle("WeSplit")
        }
        
    }//body
}//Content

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}