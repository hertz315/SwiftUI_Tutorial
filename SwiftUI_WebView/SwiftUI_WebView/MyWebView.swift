//
//  MyWebView.swift
//  SwiftUI_WebView
//
//  Created by Hertz on 11/2/22.
//

import SwiftUI
import WebKit

// UIKit의 Uiview를 사용할수 있도록 한다
struct MyWebView: UIViewRepresentable {
    var urlToLoad: String
    
    // uiview 만들기
    func makeUIView(context: Context) -> WKWebView {
        guard let url = URL(string: self.urlToLoad) else { return WKWebView() }
        
        // 웹뷰 인스턴스 생성
        let webview = WKWebView()
        // 웹뷰 로드
        webview.load(URLRequest(url: url))
        
        // 웹뷰 반환
        return webview
    }
    
    // 업데이트 uiview
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<MyWebView>) {
        
    }
        
}

struct MyWebView_Previews: PreviewProvider {
    static var previews: some View {
        MyWebView(urlToLoad: "https://www.naver.com")
    }
}
