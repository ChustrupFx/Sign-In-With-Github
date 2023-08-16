//
//  WebView.swift
//  login-with-github
//
//  Created by Victor Soares on 16/08/23.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    
    var url: URL
    
    init(url: URL) {
        self.url = url
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(parent: self)
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
    
    func makeUIView(context: Context) -> some UIView {
        let wkwebView = WKWebView()
        
        wkwebView.navigationDelegate = context.coordinator

        let request = URLRequest(url: url)
        wkwebView.load(request)
        
        return wkwebView
    }
    
    class Coordinator: NSObject, WKNavigationDelegate {
        var parent: WebView
        
        init(parent: WebView) {
            self.parent = parent
        }
        
        func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
            
            let requestURL = navigationAction.request.url
            
            if (requestURL!.absoluteString.contains("victorinacio.com")) {
                
                let components = URLComponents(string: requestURL!.absoluteString)
                
                let code = components?.queryItems?.first(where: { item in
                    item.name == "code"
                })!.value
                
                
                
                
                
                
            }

            decisionHandler(.allow)
        }
    }
    
}




