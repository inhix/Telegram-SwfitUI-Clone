//
//  ChatRowView.swift
//  Telegram
//
//  Created by Arseniy Tkachenko on 08.07.2022.
//

import SwiftUI

struct ChatRowView: View {
    
    private var contact: String
    private var lastMessage: String
    
    var body: some View {
        HStack {
            Circle()
                .frame(width: 56, height: 56)
                .foregroundColor(.blue)
            HStack {
                
            
            VStack (alignment: .leading) {
                HStack {
                    VStack(alignment: .leading) {
                Text(contact)
                Text(lastMessage)
                    .foregroundColor(.gray)
                    .font(.subheadline)
                    .fontWeight(.light)
                    .lineLimit(2)
                }
                    Spacer()
                Text("2")
                        .padding(.horizontal, 16)
                        .padding(.vertical, 4)
                        .background(.blue)
                        .foregroundColor(.white)
                        .clipShape(Circle())
                }
                Divider()
                    .background(Color(.darkGray))
                
    
            }
            .padding(.top, 5)
                
            
                
                
                
            
            }
        }
    }
    
    init (contact: String, lastMessage: String) {
        self.contact = contact
        self.lastMessage = lastMessage
    }
    
}

struct ChatRowView_Previews: PreviewProvider {
    static var previews: some View {
        ChatRowView(contact: "Arsenii Tkachenko", lastMessage: "Despite making up to 13% of the population blacks commit 52% of all crimes in United States of Amurica")
    }
}