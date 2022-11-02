//
//  ContentView.swift
//  SwiftUI_WebView
//
//  Created by Hertz on 11/2/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //        MyWebView(urlToLoad: "https://www.naver.com")
        
        NavigationView {
            HStack {
                NavigationLink(destination: MyWebView(urlToLoad: "https://www.youtube.com")
                    .edgesIgnoringSafeArea(.all)
                ) {
                    LinkText("유튜브")
                }
                NavigationLink(destination: MyWebView(urlToLoad: "https://www.naver.com")
                    .edgesIgnoringSafeArea(.all)
                ) {
                    LinkText("네이버")
                }
                NavigationLink(destination: MyWebView(urlToLoad: "https://www.google.com")
                    .edgesIgnoringSafeArea(.all)
                ) {
                    LinkText("구글")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct LinkText: View {
    

    var domain: String
    
    init(_ domain: String) {
        self.domain = domain
    }
    
    var body: some View {
        Text(domain)
            .font(.system(size: 20))
            .fontWeight(.bold)
            .padding(20)
            .background(.green)
            .foregroundColor(.white)
            .cornerRadius(20)
    }
    
}
