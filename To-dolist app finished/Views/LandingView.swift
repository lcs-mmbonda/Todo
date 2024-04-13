//
//  ContentView.swift
//  To-dolist app finished
//
//  Created by Myers Elliott Mbonda on 2024-04-08.
//
import SwiftData
import SwiftUI

struct LandingView: View {
    // MARK: Stored properties
    
    //Item being added
    @State var newItemDescription = ""
    //THe search text
    @State var searchText = ""
    //list of to-do items
    @Query var todos: [TdoItem]
    // Acess the model content
    @Environment(\.modelContext) var modelcontext
    
    // MARK: Computed properties
    var body: some View {
        NavigationView{
            VStack {
                
                
                List {
                    ForEach(todos) { todo in
                        
                        ItemView(currentItem: todo)
                        
                    }
                    .onDelete(perform: removeRows)
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
            done: false
            
        )
        modelcontext.insert(todo)
    }
    
    func removeRows(at offsets: IndexSet) {
        
        // Accept the offset within the list
        // (the position of the item being deleted)
        //
        // Then ask the model context to delete this
        // for us, from the 'todos' array
        for offset in offsets {
            modelcontext.delete(todos[offset])
        }
    }
}




//#Preview {
//  LandingView()
//}



