//
//  SecondTabDetailViewController.swift
//  SeSAC_ViewControllerLifeCycle
//
//  Created by jack on 2021/10/06.
//

import UIKit
import TextFieldEffects // HoshiTextField Library 사용하므로

class SecondTabDetailViewController: UIViewController {

    @IBOutlet weak var mottoTextField: HoshiTextField!
    // 출첵 1 - 몇번 출첵했는지 보여주는 레이블
    @IBOutlet weak var numberLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print(self, #function)
        
        // 출첵
        let number = UserDefaults.standard.integer(forKey: "number")
        numberLabel.text = "\(number)" // 이런 에러가 왜 나는지!
        
        // 3. UserDefaults에 저장되어있는 값 가져오기
        let userMotto = UserDefaults.standard.string(forKey:"userMotto") // 사물함 안을 타입을 통해 가져온다. string값을 저장하기때문에 스트링 타입으로
        print(userMotto)
        // 4. 값을 포현하고자 하는 뷰 객체(텍스트필드)에 보여주기
        mottoTextField.text = userMotto
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print(self, #function)
    }

    @IBAction func saveButtonClicked(_ sender: UIButton) {
        // 1. 저장하고자 하는 데이터를 가져오기
        let userText = mottoTextField.text ?? "열심히 살자" // if..else 를 단순화
        
        // 2. 데이터가 확인되었다면, UserDefaults에 Key를 만들고, Key에 데이터를 저장
        UserDefaults.standard.set(userText, forKey: "userMotto") // userText:value, userMotto: key
    }
    // 출첵2 - 출석체크 버튼 누를 때의 기능
    // 10번 출첵 -> 3번 버튼 누르면 -> 13번 저장
    @IBAction func checkButtonClicked(_ sender: UIButton) {
        // 출첵3 - 기존 출첵된 숫자 가져오기(10번)
        let number = UserDefaults.standard.integer(forKey: "number")
        // 출첵4 - 기존 출첵된 숫자에서 1을 더한 값을 새롭게 number 키에 저장
        UserDefaults.standard.set(number + 1, forKey: "number")
        // 출첵5 - 레이블에 보여지고 있는 값 업데이트
        let updateNumber = UserDefaults.standard.integer(forKey: "number")
        numberLabel.text = "\(updateNumber)"
        
        
        
    }
}
