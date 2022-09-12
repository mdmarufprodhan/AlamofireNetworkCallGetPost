//
//  PostViewModel.swift
//  ApiCallGetAndPost
//
//  Created by Md Maruf Prodhan on 11/9/22.
//

import Foundation

class ViewModel : ObservableObject{
    let postUrl = "https://jsonplaceholder.typicode.com/posts"

    @Published var postItems : [PostModelElement] = []
    @Published var title = ""
    @Published var bar = ""

    
    func post(){
        let body :[String: Any] = ["title" : title, "bar" : bar , "userId" : 1]
        ApiServicePost.postWithAlamofireRequest(url: postUrl ,body: body) {[weak self] postItems in
           // self?.postItems = postItems
           // print(postItems)
        }
    }
}
