//
//  ItemView.swift
//  To-dolist app finished
//
//  Created by Myers Elliott Mbonda on 2024-04-08.
//

import SwiftUI

struct ItemView: View {
    
    @Bindable var currentItem: TdoItem
    
    var body: some View {
        Label(
            title: { TextField("Enter a to-do item", text: $currentItem.title, axis: .vertical)
                
            }, icon: {
                Image(systemName: currentItem.done == true ? "checkmark.circle": "circle")
                    .onTapGesture {
                        currentItem.done.toggle()
                    }
                   
                    }
                
        )
    }
}

//#Preview {
//    List{
//        ItemView(currentItem: Binding.constant(firstItem))
//    }
//}
