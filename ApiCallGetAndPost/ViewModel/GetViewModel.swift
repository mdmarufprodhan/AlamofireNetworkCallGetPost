//
//  ViewModel.swift
//  ApiCallGetAndPost
//
//  Created by Md Maruf Prodhan on 11/9/22.
//

import Foundation

class viewModel1 : ObservableObject{
    let getUrl = "https://jsonplaceholder.typicode.com/todos"
    @Published var items  = [Model] ()
    
    
    func fetchWithAlamofire(){
        APIServices.getWithAlamofireRequest(url: getUrl) {[weak self] items in
            self?.items = items
        }
        
    }
    
}
    
    
//    func loadData(){
//        guard let url  = URL(string: getUrl) else{
//            return
//
//        }
//        let task  = URLSession.shared.dataTask(with: url) { [weak self] data, response, error in
//            guard let data = data, error == nil  else {
//                return
//
//            }
//            do {
//                let result = try JSONDecoder().decode([Model].self, from: data)
//                DispatchQueue.main.async {
//                    self?.items = result
//
//                }
//            }
//            catch{
//                print(error)
//            }
//
//
//        }
//        task.resume()
//    }
//}
