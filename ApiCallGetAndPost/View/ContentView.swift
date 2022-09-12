//
//  ContentView.swift
//  ApiCallGetAndPost
//
//  Created by Md Maruf Prodhan on 11/9/22.
//

import SwiftUI



struct ContentView: View {
    @ObservedObject var viewModels = viewModel1()
    @ObservedObject var viewModelsPost = ViewModel()
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink {
                    createPostView()
                } label: {
                    Text("Create a post")
                }

                List{
                    ForEach(viewModels.items, id: \.id){items in
                        Text(items.title)
                    }
                
                }
                .onAppear {
              //      viewModels.fetchWithAlamofire()
                    viewModelsPost.post()
                    
                }
            }
            .navigationTitle("Demo Datas")
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
