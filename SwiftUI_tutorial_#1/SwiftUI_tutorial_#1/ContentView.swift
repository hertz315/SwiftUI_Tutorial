//
//  ContentView.swift
//  SwiftUI_tutorial_#1
//
//  Created by Hertz on 10/31/22.
//

import SwiftUI

struct ContentView: View {
    
    // @State: 값의 변화를 감지 -> 뷰에 적용
    @State
    private var isActivated: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    MyHStackView(isActivated: $isActivated)
                    MyHStackView(isActivated: $isActivated)
                    MyHStackView(isActivated: $isActivated)
                } // VStack
                .padding(isActivated ? 20.0 : 10.0)
                
                .background(isActivated ? Color.yellow : Color.black)
                // 탭 제스처 추가
                .onTapGesture {
                    print(#fileID, #function, #line, "HStack Tapped")
                    // 애니메이션과 함께
                    withAnimation {
                        self.isActivated.toggle()
                    }
                } // Hstack
                
                // 네비게이션 버튼(link)
                NavigationLink(destination: MyTextView(isActivated: $isActivated) ) {
                    Text("네비게이션")
                        .fontWeight(.heavy)
                        .font(.system(size: 30))
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(30)
                        .padding()
                }.padding(50)
                
            } // Vstack
        
            
        }// NavigationView

    }
}


// 보여주는 용도
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
