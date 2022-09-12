//
//  ApiRequest.swift
//  ApiCallGetAndPost
//
//  Created by Md Maruf Prodhan on 11/9/22.
//

import Foundation
import Alamofire

class APIServices {
    
    
    
   static func getWithAlamofireRequest(url : String , completion: @escaping ([Model])->Void) {
       
       let headers: HTTPHeaders = [
                  // "Authorization": "Basic VXNlcm5hbWU6UGFzc3dvcmQ=",
                   "Accept": "application/json"
               ]
       
       AF.request(url, headers: headers).responseDecodable(of:[Model].self) { response in
                   debugPrint(response)
           // debugPrint(response)
            switch response.result{
                
            case .success(let data):
                completion(data)
            case .failure(let error):
                print(error)
            }
            
            
        }
        
    }
}
