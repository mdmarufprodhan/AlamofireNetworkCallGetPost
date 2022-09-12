//
//  ApiRequestPost.swift
//  ApiCallGetAndPost
//
//  Created by Md Maruf Prodhan on 11/9/22.
//

import Foundation
import Alamofire

class ApiServicePost{
    static func postWithAlamofireRequest(url: String ,body:[String:Any], completion: @escaping(PostModelResponse)->Void){
        //        let headers: HTTPHeaders = [
        //                   // "Authorization": "Basic VXNlcm5hbWU6UGFzc3dvcmQ=",
        //                    "Accept": "application/json"
        //                ]
        
        

        //  let finalData = try! JSONSerialization.data(withJSONObject: body)
        AF.request(url, method: .post, parameters: body).responseDecodable(of:PostModelResponse.self) {response  in
            switch response.result{
            
            case .success(let data):
                print(data)
                completion(data)
            case .failure(let error):
                print(error)
            }
            
        }
    }
    
}

//AF.request("https://httpbin.org/post",
//           method: .post,
//          // parameters: login,
//           encoder: JSONParameterEncoder.default).response { response in
//    debugPrint(response)
//}
