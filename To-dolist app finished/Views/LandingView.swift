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
                    ItemView(title: "Study Chem", done: false)
                    ItemView(title: "Comp Sci", done: false)
                    ItemView(title: "Eat food", done: true)
                        
                    
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

struct ItemView: View {
    
    let title: String
    let done: Bool
    
    var body: some View {
        Label(
            title: { Text(title)
                
            }, icon: { 
                Image(systemName: done == true ? "checkmark.circle": "circle")
                   
                    }
                
        )
    }
}

