//
//  CollectionViewController.swift
//  TrendMedia
//
//  Created by Lia AN on 2021/10/26.
//

import UIKit
import SwiftyJSON
import Alamofire

class CollectionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    

        
    }
    // 네이버 영화 네트워크 통신
    func fetchMovieData() {
        
        if let query = "스파이더맨".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) {
        
            let url = "https://openapi.naver.com/v1/search/movie.json?query=스파이더맨&display=15&start=16"
            
            AF.request(url, method: .get).validate().responseJSON { response in
                switch response.result {
                case .success(let value):
                    let json = JSON(value)
                    print("JSON: \(json)")
                case .failure(let error):
                    print(error)
        }
    }
}
