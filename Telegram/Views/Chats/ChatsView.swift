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
                    NavigationLink {
                        ChatView(contact: "Arsenii Tkachenko")
                    } label: {
                        ChatRowView(contact: "Arsenii Tkachenko",
                                    lastMessage: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ut semper quam. Phasellus non mauris sem. Donec sed fermentum eros. Donec pretium nec turpis a semper.",
                                    lastMessageSent: "13.06")
                    }
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
