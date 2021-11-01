
import UIKit
import Alamofire
import SwiftyJSON

class TranslateViewController: UIViewController {

    @IBOutlet weak var sourceTextView: UITextView!
    @IBOutlet weak var targetTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    

    @IBAction func translateButtonClicked(_ sender: UIButton) {
        
        let url = "https://openapi.naver.com/v1/papago/n2mt"
        let header: HTTPHeaders = [
            "X-Naver-Client-Id":"0Z43mGS1Jc7WBJ8Dtb9w",
            "X-Naver-Client-Secret":"hlUv1lLrQg"
        ]
        let body = [
            "source": "ko",
            "target": "en",
            "text": sourceTextView.text!
        ]
        
        
        AF.request(url, method: .post, parameters:body, headers: header).validate().responseJSON { response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                print("JSON: \(json)")
                
                let result = json["message"]["result"]["translatedText"]
                self.targetTextView.text=" \(result)"
                
                
            case .failure(let error):
                print(error)
            }
        }

    }
    

}
