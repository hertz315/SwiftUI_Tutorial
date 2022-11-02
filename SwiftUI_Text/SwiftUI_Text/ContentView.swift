//
//  ContentView.swift
//  SwiftUI_Text
//
//  Created by Hertz on 11/2/22.
//

import SwiftUI

struct ContentView: View {
    
    static let dateFormat: DateFormatter = {
       let formatter = DateFormatter()
        formatter.dateFormat = "YYYY년 M월 d일"
        return formatter
    }()
    
    var today = Date()
    
    var trueOfFalse: Bool = false
    
    var body: some View {
        VStack {
            Text("Hello, world!Hello, world!Hello, world!Hello, world!Hello, world!Hello, world!Hello, world!Hello, world!Hello, world!Hello, world!Hello, world!world!Hello, world!world!Hello, world!world!Hello, world!world!Hello,  world!world!Hello, worldworld!world!Hello, world!world!Hello, world!world!Hello, world")
                .tracking(2) // 글자와 글자 사이의 간격
                .font(.body)
                .fontWeight(.light)
                .multilineTextAlignment(.center)
                .lineLimit(nil) // 멀티라인
                .lineSpacing(10) // 글자와 글자 사이의 간격
                .truncationMode(.tail) //글자 짤리는 위치
                .shadow(color: .red, radius: 1.5) // 그림자 설정
                .padding(.all, 20)
                .background(.yellow)
                .padding()
                .background(.blue)
                .cornerRadius(20)
            Text("안녕하세요")
                .background(.gray)
                .background()
                .foregroundColor(.white)
            
            Text("오늘의 날짜입니다 : \(today, formatter: ContentView.dateFormat)")
            
            Text("참 혹은 거짓: \(String(trueOfFalse))")
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
