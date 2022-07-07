//
//  AddContactView.swift
//  Telegram
//
//  Created by Arseniy Tkachenko on 07.07.2022.
//

import SwiftUI

struct AddContactView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    
    var body: some View {
        VStack {
            HStack {
                Form {
                    VStack (alignment: .leading) {
                        HStack {
                            Circle()
                                .frame(width: 64, height: 64)
                            VStack {
                                TextField(text: $firstName, prompt: Text("FirstName")) {
                                    Text("Username")
                                }
                                Divider()
                                TextField(text: $lastName, prompt: Text("Last Name")) {
                                    Text("Password")
                                }
                                
                            }
                        }
                        
                        VStack (alignment: .leading) {
                            HStack  {
                            Image(systemName: "plus.circle.fill")
                                
                            Text("add phone")
                                    .font(.subheadline)
                            }
                            .foregroundColor(.blue)
                            
                            Divider()
                                .offset(x: 0, y: -5)
                        }
                    }
                }
                .padding(.top)
            }
        }
    }
}

struct AddContactView_Previews: PreviewProvider {
    static var previews: some View {
        AddContactView()
    }
}
