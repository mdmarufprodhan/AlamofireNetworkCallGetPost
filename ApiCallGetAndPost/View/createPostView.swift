//
//  createPost.swift
//  ApiCallGetAndPost
//
//  Created by Md Maruf Prodhan on 12/9/22.
//

import SwiftUI

struct createPostView: View {
    @StateObject var vm  = ViewModel()
    var body: some View {
        
        VStack(spacing : 0){
            AppTextField(text: $vm.title, placeHolder: "Title")
            AppTextField(text: $vm.bar, placeHolder: "Bar")
            
            Button {
                vm.post()
            } label: {
                Text("Submit")
            }
          //  .padding(.top, 40)
            .frame(width: 200, height: 25)
            .padding()
            .background(.green)
            .foregroundColor(.white)
            .clipShape(Capsule())
           // .foregroundColor(.green)
            .disabled(getDisable())
            
        }
    }
    func getDisable()->Bool{
        return vm.title.isEmpty || vm.bar.isEmpty
    }
}
struct createPost_Previews: PreviewProvider {
    static var previews: some View {
        createPostView()
    }
}

