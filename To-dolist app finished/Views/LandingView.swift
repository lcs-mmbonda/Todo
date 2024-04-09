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
    //list of to-do items
    @State var todos: [TdoItem] = exampleItems
    
    // MARK: Computed properties
    var body: some View {
        NavigationView{
            VStack {
                
                
                List($todos) { $todo in
                    ItemView(currentItem: $todo)
                        .swipeActions {
                            Button(
                                "Delete",
                                role: .destructive,
                                action: {
                                    delete(todo: todo)
                            }
                                )
                        }
                        
                    
                        
                    
                }
                .searchable(text: $searchText)
                 
                HStack {
                    TextField("Enter a to-do item", text: $newItemDescription)
                    Button("ADD") {
                        // Add new todo item
                        createToDo(withTitle: newItemDescription)
                        
                    }
                    .font(.caption)
                    .disabled(newItemDescription.isEmpty == true)
                }
                .padding(20)
                
            }
            .navigationTitle("To do")
        }
    }
    //Mark: Functions
    func createToDo(withTitle title: String){
        let todo = TdoItem(
            title: title, 
            done: false)
        todos.append(todo)
    }
    
    func delete ( todo: TdoItem) {
        
        todos.removeAll { currentItem in currentItem.id == todo.id
            
            
        }
    }
    
}



#Preview {
    LandingView()
}



