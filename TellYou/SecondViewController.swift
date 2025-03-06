//
//  SecondViewController.swift
//  TellYou
//
//  Created by 김재우 on 3/5/25.
//

import UIKit

struct Member {
  let name: String
  let mbti: String
  let blog: String
  let strength: String
  let style: String
    
  }
let chanho = Member(name: "이찬호", mbti: "ISTJ", blog: "https://mittiattar.tistory.com/", strength: "새롭고 신기한 것을 좋아해 이것저것 잘 배운다.", style: "알아서 열심히 하지만 시키면 더 열심히 함.")
let bomi = Member(name: "김보미", mbti: "ENTP", blog: "https://bomirgasm.tistory.com/", strength: "깊이 있는 사고와 논리적인 접근, 근본적인 원리 탐구 지향", style: "자유롭지만 체계적인 협업을 지향.")
let gyuhyeon = Member(name: "최규현", mbti: "ENFJ", blog: "https://ghnn.tistory.com/", strength: "어떤 것을 마주하는 시선이 항상 긍정적", style: "큰 틀은 잘 잡는 편인데 언어로 풀어내는 것에 약함.")
let jaewoo = Member(name: "김재우", mbti: "INFP", blog: "https://velog.io/@kimjaewoo522/", strength: "궁금한게 생기면 최대한 해소하려고 노력하고 탐구함", style: "최대한 팀원과 협력하려고 노력하는중!" )


class SecondViewController: UIViewController {
   
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mbtiTextField: UITextField!
    @IBOutlet weak var strengthTextField: UITextField!
    @IBOutlet weak var styleTextField: UITextField!
    @IBOutlet weak var blogTextField: UITextField!
    
    @IBOutlet weak var bomiButton: UIButton!
    @IBOutlet weak var gyuhyunButton: UIButton!
    @IBOutlet weak var chanhoButton: UIButton!
    @IBOutlet weak var jaewooButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gyuhyunButton.imageView?.alpha = 1.0
        chanhoButton.imageView?.alpha = 1.0
        jaewooButton.imageView?.alpha = 1.0
        bomiButton.imageView?.alpha = 1.0
        DataManager.shared.setValue(key: "url", value: "https://nbcamp.spartacodingclub.kr")
        
        let selectetButton = DataManager.shared.getValue(key: "selectedbutton")
        if selectetButton == "1" {
            chanhoButton.imageView?.alpha = 0.5
            jaewooButton.imageView?.alpha = 0.5
            gyuhyunButton.imageView?.alpha = 0.5
        }
        
        setupKeyboardObservers()
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(closeKeyboard))
        tapGesture.cancelsTouchesInView = false
        view.addGestureRecognizer(tapGesture)
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    @objc func closeKeyboard() {
        view.endEditing(true)
    }
    
    private func setupKeyboardObservers() {
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(keyboardWillShow(_:)),
            name: UIResponder.keyboardWillShowNotification,
            object: nil
        )
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(keyboardWillHide(_:)),
            name: UIResponder.keyboardWillHideNotification,
            object: nil
        )
    }
    
    @objc private func keyboardWillShow(_ notification: Notification) {
        guard
            let userInfo = notification.userInfo,
            let keyboardFrame = (userInfo[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue
        else { return }

        let keyboardHeight = keyboardFrame.height
        
        if self.view.frame.origin.y == 0 {
            self.view.frame.origin.y -= keyboardHeight
            // 자연스럽게 올라가는 애니메이션
            UIView.animate(withDuration: 0.3) {
                self.view.layoutIfNeeded()
            }
        }
    }

    @objc private func keyboardWillHide(_ notification: Notification) {
        self.view.frame.origin.y = 0
        UIView.animate(withDuration: 0.3) {
            self.view.layoutIfNeeded()
        }
    }
    
    @IBAction func tappedBomiButton(_ sender: UIButton) {
        gyuhyunButton.imageView?.alpha = 0.5
        chanhoButton.imageView?.alpha = 0.5
        jaewooButton.imageView?.alpha = 0.5
        bomiButton.imageView?.alpha = 1.0
        
        nameTextField.text = bomi.name
        mbtiTextField.text = bomi.mbti
        strengthTextField.text = bomi.strength
        styleTextField.text = bomi.style
        blogTextField.text = bomi.blog
        
        DataManager.shared.setValue(key: "url", value: bomi.blog)
        
        print(#function)
    }
    @IBAction func tappedGyuhyunButton(_ sender: UIButton) {
        chanhoButton.imageView?.alpha = 0.5
        jaewooButton.imageView?.alpha = 0.5
        bomiButton.imageView?.alpha = 0.5
        gyuhyunButton.imageView?.alpha = 1.0
        
        nameTextField.text = gyuhyeon.name
        mbtiTextField.text = gyuhyeon.mbti
        strengthTextField.text = gyuhyeon.strength
        styleTextField.text = gyuhyeon.style
        blogTextField.text = gyuhyeon.blog
        
        DataManager.shared.setValue(key: "url", value: gyuhyeon.blog)
        
        print(#function)
    }
    @IBAction func tappedChanhoButton(_ sender: UIButton) {
        jaewooButton.imageView?.alpha = 0.5
        bomiButton.imageView?.alpha = 0.5
        gyuhyunButton.imageView?.alpha = 0.5
        chanhoButton.imageView?.alpha = 1.0
        
        nameTextField.text = chanho.name
        mbtiTextField.text = chanho.mbti
        strengthTextField.text = chanho.strength
        styleTextField.text = chanho.style
        blogTextField.text = chanho.blog
        
        DataManager.shared.setValue(key: "url", value: chanho.blog)
        
        print(#function)
    }
    @IBAction func tappedJaewooButton(_ sender: UIButton) {
        bomiButton.imageView?.alpha = 0.5
        gyuhyunButton.imageView?.alpha = 0.5
        chanhoButton.imageView?.alpha = 0.5
        jaewooButton.imageView?.alpha = 1.0
        
        nameTextField.text = jaewoo.name
        mbtiTextField.text = jaewoo.mbti
        strengthTextField.text = jaewoo.strength
        styleTextField.text = jaewoo.style
        blogTextField.text = jaewoo.blog
        
        DataManager.shared.setValue(key: "url", value: jaewoo.blog)
        
        print(#function)
    }
}

class DataManager {
    static let shared = DataManager()
    
    var selectedurl: [String: String] = [:]
    
    private init() {}
    
    func setValue(key: String, value: String) {
        selectedurl.removeAll()
        selectedurl[key] = value
    }
    
    func getValue(key: String) -> String? {
        return selectedurl[key]
    }
}
