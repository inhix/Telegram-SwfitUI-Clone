//
//  ContactsView.swift
//  Telegram
//
//  Created by Arseniy Tkachenko on 07.07.2022.
//

import SwiftUI

struct ContactsView: View {
    @State private var showAddContact = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(0...15, id: \.self) { contact in
                    ContactView(name: "Arsenii Tkachenko", lastOnline: "2 hours ago")
                    
                }
            }
            .padding(.leading)
            .navigationTitle("Contacts")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem (placement: ToolbarItemPlacement.navigationBarLeading) {
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
                }
                ToolbarItem (placement: ToolbarItemPlacement.navigationBarTrailing) {
                    Button {
                        showAddContact = true
                    } label: {
                        Image(systemName: "plus")
                    }
                    .popover(isPresented: $showAddContact) {
                        AddContactView()
                    }
                }
                
            }
            
        }
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView()
    }
}
