//
//  ContentView.swift
//  To-dolist app finished
//
//  Created by Myers Elliott Mbonda on 2024-04-08.
//

import SwiftUI

struct LandingView: View {
    // MARK: Stored properties
    
    //Item being added
    @State var newItemDescription = ""
    //THe search text
    @State var searchText = ""
    
    // MARK: Computed properties
    var body: some View {
        NavigationView{
            VStack {
                List{
                    Text("Study For chemistry quiz")
                    Text("Do comp sci ")
                    Text("Eat food")
                }
                .searchable(text: $searchText)
                 
                HStack {
                    TextField("Enter a to-do item", text: $newItemDescription)
                    Button("ADD") {
                        // Add new todo item
                        
                    }
                    .font(.caption)
                }
                .padding(20)
                
            }
            .navigationTitle("To do")
        }
    }
}

#Preview {
    LandingView()
}
