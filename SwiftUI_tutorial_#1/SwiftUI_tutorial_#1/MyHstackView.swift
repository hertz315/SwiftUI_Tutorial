//
//  MyHstackView.swift
//  SwiftUI_tutorial_#1
//
//  Created by Hertz on 10/31/22.
//

import SwiftUI


struct MyHStackView: View {
    
    // 데이터를 연동 시킨다
    @Binding
    var isActiviated: Bool
    
    // 생성자
    init(isActivated: Binding<Bool> = .constant(false) ) {
        _isActiviated = isActivated
    }
    
    var body: some View {
        HStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
                .fontWeight(.bold)
                .font(.largeTitle)
        }
        .background(self.isActiviated ? Color.green : Color.red)
        .padding(self.isActiviated ? 10 : 0)
    }
}
