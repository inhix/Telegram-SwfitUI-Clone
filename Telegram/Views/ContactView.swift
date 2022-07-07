//
//  ContactView.swift
//  Telegram
//
//  Created by Arseniy Tkachenko on 07.07.2022.
//

import SwiftUI
import Foundation

struct ContactView: View {
    private var name: String
    private var lastOnline: String
    var body: some View {
        HStack {
            Circle()
                .frame(width: 56, height: 56)
                .foregroundColor(.blue)
            VStack (alignment: .leading) {
                Text(name)
                Text("last seen " + lastOnline)
                    .foregroundColor(.gray)
                    .font(.subheadline)
                    .fontWeight(.light)
                Divider()
                    .background(Color(.darkGray))
            }
            .padding(.top, 5)
            
        }
        
        
    }
    
    init (name: String, lastOnline: String) {
        self.name = name
        self.lastOnline = lastOnline
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView(name: "Arsenii Tkachenko", lastOnline: "2 hours ago")
    }
}
