//
//  ContentView.swift
//  To-dolist app finished
//
//  Created by Myers Elliott Mbonda on 2024-04-08.
//

import SwiftUI

struct LandingView: View {
    // MARK: Stored properties
    
    // MARK: Computed properties
    var body: some View {
        NavigationView{
            VStack {
                List{
                    Text("Study For chemistry quiz")
                    Text("Do comp sci ")
                    Text("Eat food")
                }
            }
            .navigationTitle("To do")
        }
    }
}

#Preview {
    LandingView()
}
