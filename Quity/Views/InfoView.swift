//
//  InfoView.swift
//  Quity
//
//  Created by Zaid Dahir on 2024-09-07.
//

import SwiftUI
import Fastis

struct InfoView: View {
    
    @State private var selectedDate: Date = Date()
    
    var title: String
    var image: Image
    
    var body: some View {
        NavigationView {
            ScrollView {
                image
                    .resizable()
                    .frame(width: 25, height: 25)
                Text(title)
                
                
            }
            .navigationTitle(title)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Image(systemName: "")
                }
            }
        }
    }
}

#Preview {
    InfoView(title: "Week Test", image: Image(.dumbell))
}
