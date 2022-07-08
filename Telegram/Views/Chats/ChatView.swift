//
//  ChatView.swift
//  Telegram
//
//  Created by Arseniy Tkachenko on 08.07.2022.
//

import SwiftUI
import Introspect

struct ChatView: View {
    
    private var contact: String
    
    @Environment(\.presentationMode) var presentationMode
    @State var uiTabarController: UITabBarController?
    
    var body: some View {
        ScrollView {
            messages
                .padding(.vertical)
        }
        .navigationTitle(contact)
        .introspectTabBarController { (UITabBarController) in
            UITabBarController.tabBar.isHidden = true
            uiTabarController = UITabBarController
        }.onDisappear{
            uiTabarController?.tabBar.isHidden = false
        }
    }
    
    init (contact: String) {
        self.contact = contact
    }
    
    var messages: some View {
        VStack {
            ForEach(0...4, id: \.self) { _ in
                ChatBubble(direction: .left) {
                    Text("Hello!")
                        .padding(.all, 20)
                        .foregroundColor(Color.white)
                        .background(Color.blue)
                }
                ChatBubble(direction: .right) {
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ut semper quam. Phasellus non mauris sem. Donec sed fermentum eros. Donec pretium nec turpis a semper. ")
                        .padding(.all, 20)
                        .foregroundColor(Color.white)
                        .background(Color.blue)
                }
            }
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView(contact: "Arsenii Tkachenko")
    }
}
