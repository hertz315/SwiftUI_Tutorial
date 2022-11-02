//
//  NextView.swift
//  State_Binding_EnvironmentObject_Tutorial
//
//  Created by Hertz on 11/1/22.
//

import SwiftUI

struct MyView: View {
    var body: some View {
        Text("View2")
            .font(.largeTitle)
            .fontWeight(.bold)
    }
}

struct MyView_previews: PreviewProvider {
    static var previews: some View {
        MyView()
    }
}
