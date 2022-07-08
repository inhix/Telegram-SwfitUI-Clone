//
//  ChatsView.swift
//  Telegram
//
//  Created by Arseniy Tkachenko on 07.07.2022.
//

import SwiftUI

struct ChatsView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(0...15, id: \.self) { contact in
                    ChatRowView(contact: "Arsenii Tkachenko", lastMessage: "Despite making up to 13% of the population blacks commit 52% of all crimes in United States of Amurica")
                    
                }
            }
            .padding(.leading)
            .navigationTitle("Chats")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: ToolbarItemPlacement.navigationBarLeading) {
                    Button {
                        
                    } label: {
                        Text("Edit")
                    }
                }
                ToolbarItem(placement: ToolbarItemPlacement.navigationBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "square.and.pencil")
                    }
                }
            }
        }
    }
}

struct ChatsView_Previews: PreviewProvider {
    static var previews: some View {
        ChatsView()
    }
}