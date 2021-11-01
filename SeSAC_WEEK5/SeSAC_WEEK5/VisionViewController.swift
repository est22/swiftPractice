//
//  VisionViewController.swift
//  SeSAC_WEEK5
//
//  Created by Lia AN on 2021/10/28.
//

import UIKit
import Alamofire
import SwiftyJSON
import JGProgressHUD


/*
 카메라: 시뮬 테스트 불가 -> 런타임 오류 발생
 - ImagePickerViewController -> PHPickerViewController (iOS 14+)
 - iOS14+: 선택 접근 권한 + UI
 */


class VisionViewController: UIViewController {
    
    @IBOutlet weak var postImageView: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    
    // 언제 보여줄지, 어떤 타이밍에 숨길지 결정
    let progress = JGProgressHUD()
    let imagePicker = UIImagePickerController()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker.sourceType = .photoLibrary
        imagePicker.delegate = self
        
      
    }
    @IBAction func photoLibraryButtonClicked(_ sender: UIButton) {
        self.present(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func requestButtonClicked(_ sender: UIButton) {
        
        progress.show(in: view, animated: UIButton){
            
            VisionAPIManager.shared.fetchFaceData(image: postImageView.image!){ code, json in print(json)
                
                self.progress.dismiss(animated: true)
            }
        
            
            
        }
    }
}

extension VisionViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    // 사진을 촬영하거나, 갤러리에서 사진을 선택한 직후에 실행
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        print(#function)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        print(#function)
    }
}
