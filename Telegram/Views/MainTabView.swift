//
//  MainTabView.swift
//  Telegram
//
//  Created by Arseniy Tkachenko on 07.07.2022.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedTab = 2
    @State private var navBarTitle = "Chats"
    
    var body: some View {
        TabView (selection: $selectedTab) {
            ContactsView()
                .onTapGesture {
                    self.selectedTab = 0
                    navBarTitle = "Contacts"
                }
                .tabItem {
                    Image(systemName: "person.crop.circle.fill")
                    Text("Contacts")
                }
                .tag(0)
            
            CallsView()
                .onTapGesture {
                    self.selectedTab = 1
                    navBarTitle = "Chats"
                }
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Calls")
                }
                .tag(1)
            
            ChatsView()
                .onTapGesture {
                    self.selectedTab = 2
                    navBarTitle = "Chats"
                }
                .tabItem {
                    Image(systemName: "bubble.left.and.bubble.right.fill")
                    Text("Chats")
                }
                .tag(2)
            
            SettingsView()
                .onTapGesture {
                    self.selectedTab = 3
                    navBarTitle = "Chats"
                }
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
                .tag(3)
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
