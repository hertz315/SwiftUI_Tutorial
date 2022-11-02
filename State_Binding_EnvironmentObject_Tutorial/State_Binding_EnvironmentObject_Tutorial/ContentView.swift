//
//  ContentView.swift
//  State_Binding_EnvironmentObject_Tutorial
//
//  Created by Hertz on 11/1/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showModal: Bool = false
    @State private var doIWnatThisViewToShow: Bool = false
    
    var body: some View {
        Color.orange
            .ignoresSafeArea()
            .overlay(
        Button {
            print("button pressed!")
            self.doIWnatThisViewToShow.toggle()
            MyView()
                .padding()
        } label: {
            HStack {
                Image(systemName: "folder.fill")
                Text("폴더")
            } // VStack
            .padding()
            .background(.black)
            .cornerRadius(30)
            .foregroundColor(.white)
            
        })
            .fullScreenCover(isPresented: showModal) {
                
            }
//            .opacity(self.removeAndChange ? 0 : 1)
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

