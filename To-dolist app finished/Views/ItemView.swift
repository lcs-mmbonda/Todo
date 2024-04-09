//
//  ItemView.swift
//  To-dolist app finished
//
//  Created by Myers Elliott Mbonda on 2024-04-08.
//

import SwiftUI

struct ItemView: View {
    
    let currentItem : TdoItem
    
    var body: some View {
        Label(
            title: { Text(currentItem.title)
                
            }, icon: {
                Image(systemName: currentItem.done == true ? "checkmark.circle": "circle")
                   
                    }
                
        )
    }
}

#Preview {
    List{
        ItemView(currentItem: firstItem)
    }
}
