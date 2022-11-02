//
//  ModalView.swift
//  State_Binding_EnvironmentObject_Tutorial
//
//  Created by Hertz on 11/1/22.
//

import SwiftUI

struct ModalView: View {
    var body: some View {
        Color.orange
            .ignoresSafeArea()
            .overlay(
        VStack {
            Text("View2")
                .font(.largeTitle)
                .fontWeight(.bold)
        })
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView()
    }
}
