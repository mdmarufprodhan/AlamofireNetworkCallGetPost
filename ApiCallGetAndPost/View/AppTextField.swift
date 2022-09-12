//
//  AppTextField.swift
//  ApiCallGetAndPost
//
//  Created by Md Maruf Prodhan on 12/9/22.
//

import SwiftUI

struct AppTextField: View {
    @Binding  var text : String
    let placeHolder : String
    var body: some View {
        
        TextField(placeHolder, text: $text)
            .padding()
            .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke()
                .foregroundColor(.green)
                
            )
            .padding()
        
    }
}

struct AppTextField_Previews: PreviewProvider {
    static var previews: some View {
        AppTextField(text: .constant("Text"), placeHolder: "")
    }
}
