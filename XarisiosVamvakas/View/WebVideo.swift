//
//  WebVideo.swift
//  XarisiosVamvakas
//
//  Created by Angelos Staboulis on 7/1/25.
//

import Foundation
import UIKit
import SwiftUI
import WebKit
struct WebVideo:UIViewRepresentable{
    var urlVideo = String()
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.scrollView.isScrollEnabled = false

    }
 
    func makeUIView(context: Context) ->  WKWebView {
        let webConfiguration = WKWebViewConfiguration()
        webConfiguration.allowsInlineMediaPlayback = true
        webConfiguration.mediaTypesRequiringUserActionForPlayback = []
      
        let webView = WKWebView(frame: .zero,configuration: webConfiguration)
    
        if let urlMain = URL(string:urlVideo) {
            webView.loadHTMLString("""
        "<iframe style="position:fixed; top:0; left:0; bottom:0; right:0; width:100%; height:100%; border:none; margin:0; padding:0; overflow:hidden; z-index:999999;"
        src="\(urlVideo)?autoplay=1&mute=1">
        </iframe>
        """, baseURL: urlMain)
        }
        return webView
    }
}
