//
//  WebView.swift
//  H4X0R News
//
//  Created by Jacob Chestnut on 8/10/23.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    let urlString: String?
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}
