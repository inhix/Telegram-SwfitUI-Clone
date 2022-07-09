//
//  MainTabView.swift
//  Telegram
//
//  Created by Arseniy Tkachenko on 07.07.2022.
//

import SwiftUI

enum Tabs: String {
    case contacts
    case calls
    case chats
    case settings
    
    var navTabTitle: String {
        switch self {
        case .contacts: return "Contacts"
        case .calls: return "Calls"
        case .chats: return "Chats"
        case .settings: return "Settings"
        }
    }
}

struct MainTabView: View {
    @State private var selectedTab: Tabs = .chats
    @State private var showAddContact = false
    
    var body: some View {
        NavigationView {
            TabView (selection: $selectedTab) {
                ContactsView()
                    .onTapGesture {
                        self.selectedTab = .contacts
                        
                    }
                    .tabItem {
                        Image(systemName: "person.crop.circle.fill")
                        Text("Contacts")
                    }
                    .tag(Tabs.contacts)
                
                CallsView()
                    .onTapGesture {
                        self.selectedTab = .calls
                    }
                    .tabItem {
                        Image(systemName: "phone.fill")
                        Text("Calls")
                    }
                    .tag(Tabs.calls)
                
                ChatsView()
                    .onTapGesture {
                        self.selectedTab = .chats
                    }
                    .tabItem {
                        Image(systemName: "bubble.left.and.bubble.right.fill")
                        Text("Chats")
                    }
                    .tag(Tabs.chats)
                
                SettingsView()
                    .onTapGesture {
                        self.selectedTab = .settings
                    }
                    .tabItem {
                        Image(systemName: "gear")
                        Text("Settings")
                    }
                    .tag(Tabs.settings)
            }
            .navigationTitle(selectedTab.navTabTitle)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem (placement: ToolbarItemPlacement.navigationBarLeading) {
                    
                    switch selectedTab {
                    case .contacts:
                        Menu {
                            Button {} label: {
                                Text("by Last Seen")
                            }
                            Button {} label: {
                                Text("by Name")
                            }
                        } label: {
                            Text("Sort")
                        }
                    case .chats: Button {
                        
                    } label: {
                        Text("Edit")
                    }
                    case .calls: Button {
                        
                    } label: {
                        Text("Edit")
                    }
                        
                    case .settings: EmptyView()
                    }
                    
                    
                }
                ToolbarItem (placement: ToolbarItemPlacement.navigationBarTrailing) {
                    switch selectedTab {
                    case .contacts:
                        Button {
                            showAddContact = true
                        } label: {
                            Image(systemName: "plus")
                        }
                        .popover(isPresented: $showAddContact) {
                            AddContactView()
                        }
                    case .chats:
                        Button {
                            
                        } label: {
                            Image(systemName: "square.and.pencil")
                        }
                    case .calls: NavigationLink {
                        
                    } label: {
                        Image(systemName: "phone.badge.plus")
                    }
                    case .settings: EmptyView()
                    }
                }
            }
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
