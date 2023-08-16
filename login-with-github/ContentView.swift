//
//  ContentView.swift
//  login-with-github
//
//  Created by Victor Soares on 16/08/23.
//

import SwiftUI
import UIKit
import WebKit

let clientID = "Iv1.34e7f351742334b4"

struct ContentView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            Spacer()
            
            Form {
                TextField(text: $email) {
                    Text("Email")
                }
                TextField(text: $password) {
                    Text("Password")
                }
                
                HStack {
                    Button("Sign in") {
                        
                    }
                    
                    Spacer()
                    
                    Button("Sign up") {
                        
                    }
                }
                
            }
            
            NavigationLink {
                WebView(url: URL(string: "https://github.com/login/oauth/authorize?client_id=\(clientID)")!)
            } label: {
                HStack {
                    Image("github-mark")
                        .resizable()
                        .frame(width: 50, height: 50)
                    
                    Text("Sign in with Github")
                }
            }

            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
