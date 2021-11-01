//
//  ViewController.swift
//  SeSAC_WEEK5
//
//  Created by Lia AN on 2021/10/25.
//

import UIKit
import Alamofire
import SwiftyJSON



class ViewController: UIViewController {

    @IBOutlet weak var currentTempLabel: UILabel!
    @IBOutlet weak var windSpeedLabel: UILabel!
    @IBOutlet weak var humidityLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getCurrentWeather()
        
    }
    
    func getCurrentWeather() {
        
        let url = "https://api.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=11a4696be727d48a6f2557060dc90e6a"
        
        AF.request(url, method: .get).validate().responseJSON { response in
            
            switch response.result {
            case .success(let value): // 영감값? 왜 상수가 들어가있는지
                let json = JSON(value)
                print("JSON: \(json)")
                
                let currentTemp = json["main"]["temp"].doubleValue - 273.15 // 캘빈온도->절대온도
                print(currentTemp)
                self.currentTempLabel.text="current temperature: \(Int(currentTemp))℃"
                
                let currentWindSpeed = json["wind"]["speed"].doubleValue
                self.windSpeedLabel.text="wind speed: \(currentWindSpeed)"
                
                let currentHumidity = json["main"]["humidity"].doubleValue
                self.humidityLabel.text="humidity: \(currentHumidity)"
                
            case .failure(let error):
                print(error)
            }
        }

    }

}

